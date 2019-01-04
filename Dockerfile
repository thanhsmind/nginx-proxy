#!/bin/bash

#### Build ###
# docker build -t anphabe/nginx-proxy .

FROM jwilder/nginx-proxy

COPY /certs /etc/nginx/certs

RUN { \
      echo 'client_max_body_size 10M;'; \
      echo 'proxy_read_timeout 600;'; \
    } > /etc/nginx/conf.d/mio.conf



