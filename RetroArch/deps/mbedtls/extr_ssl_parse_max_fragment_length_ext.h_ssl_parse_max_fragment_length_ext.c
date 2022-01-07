
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* session_negotiate; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {unsigned char mfl_code; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 unsigned char const MBEDTLS_SSL_MAX_FRAG_LEN_INVALID ;
 int mbedtls_ssl_send_alert_message (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int ssl_parse_max_fragment_length_ext( mbedtls_ssl_context *ssl,
                                              const unsigned char *buf,
                                              size_t len )
{
    if( len != 1 || buf[0] >= MBEDTLS_SSL_MAX_FRAG_LEN_INVALID )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad client hello message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
    }

    ssl->session_negotiate->mfl_code = buf[0];

    return( 0 );
}
