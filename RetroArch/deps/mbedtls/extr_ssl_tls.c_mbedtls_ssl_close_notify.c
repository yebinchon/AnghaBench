
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ out_left; scalar_t__ state; int * conf; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_SSL_ALERT_LEVEL_WARNING ;
 int MBEDTLS_SSL_ALERT_MSG_CLOSE_NOTIFY ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ;
 int mbedtls_ssl_flush_output (TYPE_1__*) ;
 int mbedtls_ssl_send_alert_message (TYPE_1__*,int ,int ) ;

int mbedtls_ssl_close_notify( mbedtls_ssl_context *ssl )
{
    int ret;

    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write close notify" ) );

    if( ssl->out_left != 0 )
        return( mbedtls_ssl_flush_output( ssl ) );

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        if( ( ret = mbedtls_ssl_send_alert_message( ssl,
                        MBEDTLS_SSL_ALERT_LEVEL_WARNING,
                        MBEDTLS_SSL_ALERT_MSG_CLOSE_NOTIFY ) ) != 0 )
        {
            MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_send_alert_message", ret );
            return( ret );
        }
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write close notify" ) );

    return( 0 );
}
