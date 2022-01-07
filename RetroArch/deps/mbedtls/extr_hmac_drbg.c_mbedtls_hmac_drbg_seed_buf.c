
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_md_info_t ;
struct TYPE_4__ {int V; int md_ctx; } ;
typedef TYPE_1__ mbedtls_hmac_drbg_context ;


 int mbedtls_hmac_drbg_update (TYPE_1__*,unsigned char const*,size_t) ;
 int mbedtls_md_get_size (int const*) ;
 int mbedtls_md_hmac_starts (int *,int ,int ) ;
 int mbedtls_md_setup (int *,int const*,int) ;
 int memset (int ,int,int ) ;

int mbedtls_hmac_drbg_seed_buf( mbedtls_hmac_drbg_context *ctx,
                        const mbedtls_md_info_t * md_info,
                        const unsigned char *data, size_t data_len )
{
    int ret;

    if( ( ret = mbedtls_md_setup( &ctx->md_ctx, md_info, 1 ) ) != 0 )
        return( ret );






    mbedtls_md_hmac_starts( &ctx->md_ctx, ctx->V, mbedtls_md_get_size( md_info ) );
    memset( ctx->V, 0x01, mbedtls_md_get_size( md_info ) );

    mbedtls_hmac_drbg_update( ctx, data, data_len );

    return( 0 );
}
