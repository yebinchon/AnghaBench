
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chacha20poly1305_ctx ;
struct TYPE_2__ {int (* reset ) (int ,int *) ;} ;


 TYPE_1__* fns () ;
 int info () ;
 int stub1 (int ,int *) ;

int chacha20poly1305_reset(chacha20poly1305_ctx *ctx)
{
    return fns()->reset(info(), ctx);
}
