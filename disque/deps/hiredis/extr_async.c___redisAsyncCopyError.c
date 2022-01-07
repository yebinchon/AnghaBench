
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errstr; int err; } ;
typedef TYPE_1__ redisContext ;
struct TYPE_5__ {int errstr; int err; TYPE_1__ c; } ;
typedef TYPE_2__ redisAsyncContext ;



__attribute__((used)) static void __redisAsyncCopyError(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    ac->err = c->err;
    ac->errstr = c->errstr;
}
