FROM centos:7

USER 0

COPY jenkins.repo /home
WORKDIR /home

RUN yum -y install java-1.8.0-openjdk-devel && \
    rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key && \
    yum -y install jenkins

RUN mkdir /home/jenkins && \
    chmod 777 /home/jenkins

CMD ["systemctl start jenkins"]