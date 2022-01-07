
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_md_info_t ;
struct TYPE_4__ {int (* f_entropy ) (void*,unsigned char*,size_t) ;size_t entropy_len; int reseed_interval; void* p_entropy; int V; int md_ctx; } ;
typedef TYPE_1__ mbedtls_hmac_drbg_context ;


 int MBEDTLS_HMAC_DRBG_RESEED_INTERVAL ;
 int mbedtls_hmac_drbg_reseed (TYPE_1__*,unsigned char const*,size_t) ;
 size_t mbedtls_md_get_size (int const*) ;
 int mbedtls_md_hmac_starts (int *,int ,size_t) ;
 int mbedtls_md_setup (int *,int const*,int) ;
 int memset (int ,int,size_t) ;

int mbedtls_hmac_drbg_seed( mbedtls_hmac_drbg_context *ctx,
                    const mbedtls_md_info_t * md_info,
                    int (*f_entropy)(void *, unsigned char *, size_t),
                    void *p_entropy,
                    const unsigned char *custom,
                    size_t len )
{
    int ret;
    size_t entropy_len, md_size;

    if( ( ret = mbedtls_md_setup( &ctx->md_ctx, md_info, 1 ) ) != 0 )
        return( ret );

    md_size = mbedtls_md_get_size( md_info );






    mbedtls_md_hmac_starts( &ctx->md_ctx, ctx->V, md_size );
    memset( ctx->V, 0x01, md_size );

    ctx->f_entropy = f_entropy;
    ctx->p_entropy = p_entropy;

    ctx->reseed_interval = MBEDTLS_HMAC_DRBG_RESEED_INTERVAL;
    entropy_len = md_size <= 20 ? 16 :
                  md_size <= 28 ? 24 :
                                  32;





    ctx->entropy_len = entropy_len * 3 / 2;

    if( ( ret = mbedtls_hmac_drbg_reseed( ctx, custom, len ) ) != 0 )
        return( ret );

    ctx->entropy_len = entropy_len;

    return( 0 );
}
