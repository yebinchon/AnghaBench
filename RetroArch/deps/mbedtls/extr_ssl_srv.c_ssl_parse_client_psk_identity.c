
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_6__ {scalar_t__ (* f_psk ) (int ,TYPE_2__*,unsigned char*,size_t) ;size_t psk_identity_len; scalar_t__ psk_len; int * psk_identity; int p_psk; int * psk; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE ;
 int MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED ;
 int MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_UNKNOWN_PSK_IDENTITY ;
 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,size_t) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ mbedtls_ssl_safer_memcmp (int *,unsigned char*,size_t) ;
 int mbedtls_ssl_send_alert_message (TYPE_2__*,int ,int ) ;
 scalar_t__ stub1 (int ,TYPE_2__*,unsigned char*,size_t) ;

__attribute__((used)) static int ssl_parse_client_psk_identity( mbedtls_ssl_context *ssl, unsigned char **p,
                                          const unsigned char *end )
{
    int ret = 0;
    size_t n;

    if( ssl->conf->f_psk == ((void*)0) &&
        ( ssl->conf->psk == ((void*)0) || ssl->conf->psk_identity == ((void*)0) ||
          ssl->conf->psk_identity_len == 0 || ssl->conf->psk_len == 0 ) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "got no pre-shared key" ) );
        return( MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED );
    }




    if( *p + 2 > end )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad client key exchange message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE );
    }

    n = ( (*p)[0] << 8 ) | (*p)[1];
    *p += 2;

    if( n < 1 || n > 65535 || *p + n > end )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad client key exchange message" ) );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE );
    }

    if( ssl->conf->f_psk != ((void*)0) )
    {
        if( ssl->conf->f_psk( ssl->conf->p_psk, ssl, *p, n ) != 0 )
            ret = MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY;
    }
    else
    {


        if( n != ssl->conf->psk_identity_len ||
            mbedtls_ssl_safer_memcmp( ssl->conf->psk_identity, *p, n ) != 0 )
        {
            ret = MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY;
        }
    }

    if( ret == MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY )
    {
        MBEDTLS_SSL_DEBUG_BUF( 3, "Unknown PSK identity", *p, n );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_UNKNOWN_PSK_IDENTITY );
        return( MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY );
    }

    *p += n;

    return( 0 );
}
