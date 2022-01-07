
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* md_info; int md_ctx; int * hmac_ctx; } ;
typedef TYPE_2__ mbedtls_md_context_t ;
struct TYPE_4__ {int block_size; int (* update_func ) (int ,unsigned char*,int ) ;int (* starts_func ) (int ) ;} ;


 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ;
 int stub1 (int ) ;
 int stub2 (int ,unsigned char*,int ) ;

int mbedtls_md_hmac_reset( mbedtls_md_context_t *ctx )
{
    unsigned char *ipad;

    if( ctx == ((void*)0) || ctx->md_info == ((void*)0) || ctx->hmac_ctx == ((void*)0) )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    ipad = (unsigned char *) ctx->hmac_ctx;

    ctx->md_info->starts_func( ctx->md_ctx );
    ctx->md_info->update_func( ctx->md_ctx, ipad, ctx->md_info->block_size );

    return( 0 );
}
