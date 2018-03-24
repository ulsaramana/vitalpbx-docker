FROM centos:7

ENV container docker

RUN yum install wget -y;\
wget https://raw.githubusercontent.com/VitalPBX/VPS/master/vps.sh;

RUN chmod +x vps.sh;

EXPOSE 3000/tcp 3005/tcp 

CMD ["/usr/sbin/init"]
