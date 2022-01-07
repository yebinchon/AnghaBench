
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int redisReply ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_8__ {int privdata; int (* fn ) (TYPE_3__*,int *,int ) ;} ;
typedef TYPE_2__ redisCallback ;
struct TYPE_9__ {TYPE_1__ c; } ;
typedef TYPE_3__ redisAsyncContext ;


 int REDIS_IN_CALLBACK ;
 int stub1 (TYPE_3__*,int *,int ) ;

__attribute__((used)) static void __redisRunCallback(redisAsyncContext *ac, redisCallback *cb, redisReply *reply) {
    redisContext *c = &(ac->c);
    if (cb->fn != ((void*)0)) {
        c->flags |= REDIS_IN_CALLBACK;
        cb->fn(ac,reply,cb->privdata);
        c->flags &= ~REDIS_IN_CALLBACK;
    }
}
