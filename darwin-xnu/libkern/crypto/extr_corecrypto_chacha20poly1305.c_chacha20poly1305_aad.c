
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chacha20poly1305_ctx ;
struct TYPE_2__ {int (* aad ) (int ,int *,size_t,void const*) ;} ;


 TYPE_1__* fns () ;
 int info () ;
 int stub1 (int ,int *,size_t,void const*) ;

int chacha20poly1305_aad(chacha20poly1305_ctx *ctx, size_t nbytes, const void *aad)
{
    return fns()->aad(info(), ctx, nbytes, aad);
}
