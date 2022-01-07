
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int chacha20poly1305_ctx ;
struct TYPE_2__ {int (* incnonce ) (int ,int *,int *) ;} ;


 TYPE_1__* fns () ;
 int info () ;
 int stub1 (int ,int *,int *) ;

int chacha20poly1305_incnonce(chacha20poly1305_ctx *ctx, uint8_t *nonce)
{
    return fns()->incnonce(info(), ctx, nonce);
}
