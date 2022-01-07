
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sum ;
struct TYPE_5__ {TYPE_1__* md_info; int md_ctx; int * hmac_ctx; } ;
typedef TYPE_2__ mbedtls_md_context_t ;
struct TYPE_4__ {size_t block_size; size_t size; int (* update_func ) (int ,unsigned char*,size_t) ;int (* starts_func ) (int ) ;int (* finish_func ) (int ,unsigned char*) ;} ;


 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ;
 int MBEDTLS_MD_MAX_SIZE ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int memset (unsigned char*,int,size_t) ;
 int stub1 (int ) ;
 int stub2 (int ,unsigned char const*,size_t) ;
 int stub3 (int ,unsigned char*) ;
 int stub4 (int ) ;
 int stub5 (int ,unsigned char*,size_t) ;

int mbedtls_md_hmac_starts( mbedtls_md_context_t *ctx, const unsigned char *key, size_t keylen )
{
    unsigned char sum[MBEDTLS_MD_MAX_SIZE];
    unsigned char *ipad, *opad;
    size_t i;

    if( ctx == ((void*)0) || ctx->md_info == ((void*)0) || ctx->hmac_ctx == ((void*)0) )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    if( keylen > (size_t) ctx->md_info->block_size )
    {
        ctx->md_info->starts_func( ctx->md_ctx );
        ctx->md_info->update_func( ctx->md_ctx, key, keylen );
        ctx->md_info->finish_func( ctx->md_ctx, sum );

        keylen = ctx->md_info->size;
        key = sum;
    }

    ipad = (unsigned char *) ctx->hmac_ctx;
    opad = (unsigned char *) ctx->hmac_ctx + ctx->md_info->block_size;

    memset( ipad, 0x36, ctx->md_info->block_size );
    memset( opad, 0x5C, ctx->md_info->block_size );

    for( i = 0; i < keylen; i++ )
    {
        ipad[i] = (unsigned char)( ipad[i] ^ key[i] );
        opad[i] = (unsigned char)( opad[i] ^ key[i] );
    }

    mbedtls_zeroize( sum, sizeof( sum ) );

    ctx->md_info->starts_func( ctx->md_ctx );
    ctx->md_info->update_func( ctx->md_ctx, ipad, ctx->md_info->block_size );

    return( 0 );
}
