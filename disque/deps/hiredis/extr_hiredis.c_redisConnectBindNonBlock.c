
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ redisContext ;


 int REDIS_BLOCK ;
 int redisContextConnectBindTcp (TYPE_1__*,char const*,int,int *,char const*) ;
 TYPE_1__* redisContextInit () ;

redisContext *redisConnectBindNonBlock(const char *ip, int port,
                                       const char *source_addr) {
    redisContext *c = redisContextInit();
    c->flags &= ~REDIS_BLOCK;
    redisContextConnectBindTcp(c,ip,port,((void*)0),source_addr);
    return c;
}
