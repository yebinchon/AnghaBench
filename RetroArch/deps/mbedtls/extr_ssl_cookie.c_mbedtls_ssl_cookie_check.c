
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ref_hmac ;
struct TYPE_2__ {unsigned long serial; unsigned long timeout; int mutex; int hmac_ctx; } ;
typedef TYPE_1__ mbedtls_ssl_cookie_ctx ;


 int COOKIE_HMAC_LEN ;
 size_t COOKIE_LEN ;
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ;
 int mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;
 scalar_t__ mbedtls_ssl_safer_memcmp (unsigned char const*,unsigned char*,int) ;
 scalar_t__ mbedtls_time (int *) ;
 scalar_t__ ssl_cookie_hmac (int *,unsigned char const*,unsigned char**,unsigned char*,unsigned char const*,size_t) ;

int mbedtls_ssl_cookie_check( void *p_ctx,
                      const unsigned char *cookie, size_t cookie_len,
                      const unsigned char *cli_id, size_t cli_id_len )
{
    unsigned char ref_hmac[COOKIE_HMAC_LEN];
    int ret = 0;
    unsigned char *p = ref_hmac;
    mbedtls_ssl_cookie_ctx *ctx = (mbedtls_ssl_cookie_ctx *) p_ctx;
    unsigned long cur_time, cookie_time;

    if( ctx == ((void*)0) || cli_id == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    if( cookie_len != COOKIE_LEN )
        return( -1 );






    if( ssl_cookie_hmac( &ctx->hmac_ctx, cookie,
                         &p, p + sizeof( ref_hmac ),
                         cli_id, cli_id_len ) != 0 )
        ret = -1;







    if( ret != 0 )
        return( ret );

    if( mbedtls_ssl_safer_memcmp( cookie + 4, ref_hmac, sizeof( ref_hmac ) ) != 0 )
        return( -1 );




    cur_time = ctx->serial;


    cookie_time = ( (unsigned long) cookie[0] << 24 ) |
                  ( (unsigned long) cookie[1] << 16 ) |
                  ( (unsigned long) cookie[2] << 8 ) |
                  ( (unsigned long) cookie[3] );

    if( ctx->timeout != 0 && cur_time - cookie_time > ctx->timeout )
        return( -1 );

    return( 0 );
}
