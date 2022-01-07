
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hmac_ctx; } ;
typedef TYPE_1__ mbedtls_ssl_cookie_ctx ;
typedef int key ;


 int COOKIE_MD ;
 int COOKIE_MD_OUTLEN ;
 int mbedtls_md_hmac_starts (int *,unsigned char*,int) ;
 int mbedtls_md_info_from_type (int ) ;
 int mbedtls_md_setup (int *,int ,int) ;
 int mbedtls_zeroize (unsigned char*,int) ;

int mbedtls_ssl_cookie_setup( mbedtls_ssl_cookie_ctx *ctx,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng )
{
    int ret;
    unsigned char key[COOKIE_MD_OUTLEN];

    if( ( ret = f_rng( p_rng, key, sizeof( key ) ) ) != 0 )
        return( ret );

    ret = mbedtls_md_setup( &ctx->hmac_ctx, mbedtls_md_info_from_type( COOKIE_MD ), 1 );
    if( ret != 0 )
        return( ret );

    ret = mbedtls_md_hmac_starts( &ctx->hmac_ctx, key, sizeof( key ) );
    if( ret != 0 )
        return( ret );

    mbedtls_zeroize( key, sizeof( key ) );

    return( 0 );
}
