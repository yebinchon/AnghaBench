
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ssl_context ;


 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE ;
 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;

__attribute__((used)) static int ssl_parse_server_psk_hint( mbedtls_ssl_context *ssl,
                                      unsigned char **p,
                                      unsigned char *end )
{
    int ret = MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE;
    size_t len;
    ((void) ssl);






    len = (*p)[0] << 8 | (*p)[1];
    *p += 2;

    if( (*p) + len > end )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad server key exchange message "
                                    "(psk_identity_hint length)" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE );
    }






    *p += len;
    ret = 0;

    return( ret );
}
