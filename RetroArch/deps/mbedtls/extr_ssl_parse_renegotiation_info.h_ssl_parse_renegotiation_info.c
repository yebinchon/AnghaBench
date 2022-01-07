
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ renego_status; int verify_data_len; int secure_renegotiation; int peer_verify_data; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_INITIAL_HANDSHAKE ;
 int MBEDTLS_SSL_SECURE_RENEGOTIATION ;
 scalar_t__ mbedtls_ssl_safer_memcmp (unsigned char const*,int ,unsigned char const) ;
 int mbedtls_ssl_send_alert_message (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int ssl_parse_renegotiation_info( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    {
        if( len != 1 || buf[0] != 0x0 )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "non-zero length renegotiation info" ) );
            mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                            MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE );
            return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
        }

        ssl->secure_renegotiation = MBEDTLS_SSL_SECURE_RENEGOTIATION;
    }

    return( 0 );
}
