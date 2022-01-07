
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; int flags; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_BLOCK ;
 int REDIS_CONNECTED ;
 TYPE_1__* redisContextInit () ;

redisContext *redisConnectFd(int fd) {
    redisContext *c;

    c = redisContextInit();
    if (c == ((void*)0))
        return ((void*)0);

    c->fd = fd;
    c->flags |= REDIS_BLOCK | REDIS_CONNECTED;
    return c;
}
