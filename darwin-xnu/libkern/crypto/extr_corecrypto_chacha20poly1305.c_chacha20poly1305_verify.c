
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int chacha20poly1305_ctx ;
struct TYPE_2__ {int (* verify ) (int ,int *,int const*) ;} ;


 TYPE_1__* fns () ;
 int info () ;
 int stub1 (int ,int *,int const*) ;

int chacha20poly1305_verify(chacha20poly1305_ctx *ctx, const uint8_t *tag)
{
    return fns()->verify(info(), ctx, tag);
}
