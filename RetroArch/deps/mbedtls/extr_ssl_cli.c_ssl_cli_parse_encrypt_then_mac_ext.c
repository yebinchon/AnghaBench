
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ minor_ver; TYPE_2__* session_negotiate; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_7__ {int encrypt_then_mac; } ;
struct TYPE_6__ {scalar_t__ encrypt_then_mac; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_ETM_DISABLED ;
 int MBEDTLS_SSL_ETM_ENABLED ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 int mbedtls_ssl_send_alert_message (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int ssl_cli_parse_encrypt_then_mac_ext( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->encrypt_then_mac == MBEDTLS_SSL_ETM_DISABLED ||
        ssl->minor_ver == MBEDTLS_SSL_MINOR_VERSION_0 ||
        len != 0 )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "non-matching encrypt-then-MAC extension" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE );
        return( MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO );
    }

    ((void) buf);

    ssl->session_negotiate->encrypt_then_mac = MBEDTLS_SSL_ETM_ENABLED;

    return( 0 );
}
