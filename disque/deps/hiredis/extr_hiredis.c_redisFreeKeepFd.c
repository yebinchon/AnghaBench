
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ redisContext ;


 int redisFree (TYPE_1__*) ;

int redisFreeKeepFd(redisContext *c) {
 int fd = c->fd;
 c->fd = -1;
 redisFree(c);
 return fd;
}
