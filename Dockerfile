FROM centos:7

RUN yum install /sbin/service -y
RUN yum install httpd -y
COPY *.html /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
