
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int md_ctx; TYPE_1__* md_info; int * hmac_ctx; } ;
typedef TYPE_2__ mbedtls_md_context_t ;
struct TYPE_4__ {int (* finish_func ) (int ,unsigned char*) ;int size; int (* update_func ) (int ,unsigned char*,int ) ;int block_size; int (* starts_func ) (int ) ;} ;


 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ;
 int MBEDTLS_MD_MAX_SIZE ;
 int stub1 (int ,unsigned char*) ;
 int stub2 (int ) ;
 int stub3 (int ,unsigned char*,int ) ;
 int stub4 (int ,unsigned char*,int ) ;
 int stub5 (int ,unsigned char*) ;

int mbedtls_md_hmac_finish( mbedtls_md_context_t *ctx, unsigned char *output )
{
    unsigned char tmp[MBEDTLS_MD_MAX_SIZE];
    unsigned char *opad;

    if( ctx == ((void*)0) || ctx->md_info == ((void*)0) || ctx->hmac_ctx == ((void*)0) )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    opad = (unsigned char *) ctx->hmac_ctx + ctx->md_info->block_size;

    ctx->md_info->finish_func( ctx->md_ctx, tmp );
    ctx->md_info->starts_func( ctx->md_ctx );
    ctx->md_info->update_func( ctx->md_ctx, opad, ctx->md_info->block_size );
    ctx->md_info->update_func( ctx->md_ctx, tmp, ctx->md_info->size );
    ctx->md_info->finish_func( ctx->md_ctx, output );

    return( 0 );
}
