
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mbedtls_cmac_context_t ;
struct TYPE_9__ {scalar_t__ cipher_ctx; TYPE_2__* cipher_info; struct TYPE_9__* cmac_ctx; } ;
typedef TYPE_3__ mbedtls_cipher_context_t ;
struct TYPE_8__ {TYPE_1__* base; } ;
struct TYPE_7__ {int (* ctx_free_func ) (scalar_t__) ;} ;


 int mbedtls_free (TYPE_3__*) ;
 int mbedtls_zeroize (TYPE_3__*,int) ;
 int stub1 (scalar_t__) ;

void mbedtls_cipher_free( mbedtls_cipher_context_t *ctx )
{
    if( ctx == ((void*)0) )
        return;
    if( ctx->cipher_ctx )
        ctx->cipher_info->base->ctx_free_func( ctx->cipher_ctx );

    mbedtls_zeroize( ctx, sizeof(mbedtls_cipher_context_t) );
}
