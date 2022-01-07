
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int md_info; } ;
struct TYPE_7__ {unsigned char const* V; TYPE_2__ md_ctx; } ;
typedef TYPE_1__ mbedtls_hmac_drbg_context ;


 int MBEDTLS_MD_MAX_SIZE ;
 size_t mbedtls_md_get_size (int ) ;
 int mbedtls_md_hmac_finish (TYPE_2__*,unsigned char*) ;
 int mbedtls_md_hmac_reset (TYPE_2__*) ;
 int mbedtls_md_hmac_starts (TYPE_2__*,unsigned char*,size_t) ;
 int mbedtls_md_hmac_update (TYPE_2__*,unsigned char const*,size_t) ;

void mbedtls_hmac_drbg_update( mbedtls_hmac_drbg_context *ctx,
                       const unsigned char *additional, size_t add_len )
{
    size_t md_len = mbedtls_md_get_size( ctx->md_ctx.md_info );
    unsigned char rounds = ( additional != ((void*)0) && add_len != 0 ) ? 2 : 1;
    unsigned char sep[1];
    unsigned char K[MBEDTLS_MD_MAX_SIZE];

    for( sep[0] = 0; sep[0] < rounds; sep[0]++ )
    {

        mbedtls_md_hmac_reset( &ctx->md_ctx );
        mbedtls_md_hmac_update( &ctx->md_ctx, ctx->V, md_len );
        mbedtls_md_hmac_update( &ctx->md_ctx, sep, 1 );
        if( rounds == 2 )
            mbedtls_md_hmac_update( &ctx->md_ctx, additional, add_len );
        mbedtls_md_hmac_finish( &ctx->md_ctx, K );


        mbedtls_md_hmac_starts( &ctx->md_ctx, K, md_len );
        mbedtls_md_hmac_update( &ctx->md_ctx, ctx->V, md_len );
        mbedtls_md_hmac_finish( &ctx->md_ctx, ctx->V );
    }
}
