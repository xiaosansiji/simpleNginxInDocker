#!/bin/bash

docker run --detach \
    --name myNginx \
    --publish 8080:80 \
    -v /home/sunzhe/code/nginx/html:/usr/share/nginx/html:rw \
    -v /home/sunzhe/code/nginx/conf.d:/etc/nginx/conf.d:rw \
    -v /home/sunzhe/code/nginx/logs/error.log:/var/log/nginx/error.log:rw \
    -d nginx
