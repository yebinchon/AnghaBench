
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pk_ctx; TYPE_1__* pk_info; } ;
typedef TYPE_2__ mbedtls_pk_context ;
struct TYPE_5__ {int (* ctx_free_func ) (int ) ;} ;


 int mbedtls_zeroize (TYPE_2__*,int) ;
 int stub1 (int ) ;

void mbedtls_pk_free( mbedtls_pk_context *ctx )
{
    if( ctx == ((void*)0) || ctx->pk_info == ((void*)0) )
        return;

    ctx->pk_info->ctx_free_func( ctx->pk_ctx );

    mbedtls_zeroize( ctx, sizeof( mbedtls_pk_context ) );
}
