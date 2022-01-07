
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* errstr; int reader; int obuf; scalar_t__ err; } ;
typedef TYPE_1__ redisContext ;


 TYPE_1__* calloc (int,int) ;
 int redisReaderCreate () ;
 int sdsempty () ;

__attribute__((used)) static redisContext *redisContextInit(void) {
    redisContext *c;

    c = calloc(1,sizeof(redisContext));
    if (c == ((void*)0))
        return ((void*)0);

    c->err = 0;
    c->errstr[0] = '\0';
    c->obuf = sdsempty();
    c->reader = redisReaderCreate();
    return c;
}
