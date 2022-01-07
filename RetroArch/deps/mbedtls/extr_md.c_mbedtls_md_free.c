
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* hmac_ctx; TYPE_1__* md_info; int * md_ctx; } ;
typedef TYPE_2__ mbedtls_md_context_t ;
struct TYPE_6__ {int block_size; int (* ctx_free_func ) (int *) ;} ;


 int mbedtls_free (TYPE_2__*) ;
 int mbedtls_zeroize (TYPE_2__*,int) ;
 int stub1 (int *) ;

void mbedtls_md_free( mbedtls_md_context_t *ctx )
{
    if( ctx == ((void*)0) || ctx->md_info == ((void*)0) )
        return;

    if( ctx->md_ctx != ((void*)0) )
        ctx->md_info->ctx_free_func( ctx->md_ctx );

    if( ctx->hmac_ctx != ((void*)0) )
    {
        mbedtls_zeroize( ctx->hmac_ctx, 2 * ctx->md_info->block_size );
        mbedtls_free( ctx->hmac_ctx );
    }

    mbedtls_zeroize( ctx, sizeof( mbedtls_md_context_t ) );
}
