
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int hmac_ctx; int serial; } ;
typedef TYPE_1__ mbedtls_ssl_cookie_ctx ;


 size_t COOKIE_LEN ;
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ;
 int mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;
 scalar_t__ mbedtls_time (int *) ;
 int ssl_cookie_hmac (int *,unsigned char*,unsigned char**,unsigned char*,unsigned char const*,size_t) ;

int mbedtls_ssl_cookie_write( void *p_ctx,
                      unsigned char **p, unsigned char *end,
                      const unsigned char *cli_id, size_t cli_id_len )
{
    int ret;
    mbedtls_ssl_cookie_ctx *ctx = (mbedtls_ssl_cookie_ctx *) p_ctx;
    unsigned long t;

    if( ctx == ((void*)0) || cli_id == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    if( (size_t)( end - *p ) < COOKIE_LEN )
        return( MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL );




    t = ctx->serial++;


    (*p)[0] = (unsigned char)( t >> 24 );
    (*p)[1] = (unsigned char)( t >> 16 );
    (*p)[2] = (unsigned char)( t >> 8 );
    (*p)[3] = (unsigned char)( t );
    *p += 4;






    ret = ssl_cookie_hmac( &ctx->hmac_ctx, *p - 4,
                           p, end, cli_id, cli_id_len );







    return( ret );
}
