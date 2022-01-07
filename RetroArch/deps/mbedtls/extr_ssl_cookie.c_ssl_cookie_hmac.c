
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md_context_t ;


 size_t COOKIE_HMAC_LEN ;
 int COOKIE_MD_OUTLEN ;
 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 scalar_t__ mbedtls_md_hmac_finish (int *,unsigned char*) ;
 scalar_t__ mbedtls_md_hmac_reset (int *) ;
 scalar_t__ mbedtls_md_hmac_update (int *,unsigned char const*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int ssl_cookie_hmac( mbedtls_md_context_t *hmac_ctx,
                            const unsigned char time[4],
                            unsigned char **p, unsigned char *end,
                            const unsigned char *cli_id, size_t cli_id_len )
{
    unsigned char hmac_out[COOKIE_MD_OUTLEN];

    if( (size_t)( end - *p ) < COOKIE_HMAC_LEN )
        return( MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL );

    if( mbedtls_md_hmac_reset( hmac_ctx ) != 0 ||
        mbedtls_md_hmac_update( hmac_ctx, time, 4 ) != 0 ||
        mbedtls_md_hmac_update( hmac_ctx, cli_id, cli_id_len ) != 0 ||
        mbedtls_md_hmac_finish( hmac_ctx, hmac_out ) != 0 )
    {
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    memcpy( *p, hmac_out, COOKIE_HMAC_LEN );
    *p += COOKIE_HMAC_LEN;

    return( 0 );
}
