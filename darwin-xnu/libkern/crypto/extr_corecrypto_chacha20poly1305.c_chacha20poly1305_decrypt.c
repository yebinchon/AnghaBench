
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chacha20poly1305_ctx ;
struct TYPE_2__ {int (* decrypt ) (int ,int *,size_t,void const*,void*) ;} ;


 TYPE_1__* fns () ;
 int info () ;
 int stub1 (int ,int *,size_t,void const*,void*) ;

int chacha20poly1305_decrypt(chacha20poly1305_ctx *ctx, size_t nbytes, const void *ctext, void *ptext)
{
    return fns()->decrypt(info(), ctx, nbytes, ctext, ptext);
}
