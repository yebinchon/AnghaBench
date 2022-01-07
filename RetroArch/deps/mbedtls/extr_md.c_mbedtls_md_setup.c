
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* ctx_free_func ) (int *) ;int block_size; int * (* ctx_alloc_func ) () ;} ;
typedef TYPE_1__ mbedtls_md_info_t ;
struct TYPE_6__ {TYPE_1__ const* md_info; int * md_ctx; int * hmac_ctx; } ;
typedef TYPE_2__ mbedtls_md_context_t ;


 int MBEDTLS_ERR_MD_ALLOC_FAILED ;
 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ;
 int * mbedtls_calloc (int,int ) ;
 int * stub1 () ;
 int stub2 (int *) ;

int mbedtls_md_setup( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info, int hmac )
{
    if( md_info == ((void*)0) || ctx == ((void*)0) )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    if( ( ctx->md_ctx = md_info->ctx_alloc_func() ) == ((void*)0) )
        return( MBEDTLS_ERR_MD_ALLOC_FAILED );

    if( hmac != 0 )
    {
        ctx->hmac_ctx = mbedtls_calloc( 2, md_info->block_size );
        if( ctx->hmac_ctx == ((void*)0) )
        {
            md_info->ctx_free_func( ctx->md_ctx );
            return( MBEDTLS_ERR_MD_ALLOC_FAILED );
        }
    }

    ctx->md_info = md_info;

    return( 0 );
}
