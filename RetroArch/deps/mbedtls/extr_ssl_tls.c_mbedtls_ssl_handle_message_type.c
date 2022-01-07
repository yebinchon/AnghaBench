
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ in_msgtype; scalar_t__* in_msg; scalar_t__ minor_ver; TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {scalar_t__ endpoint; } ;


 int MBEDTLS_ERR_SSL_FATAL_ALERT_MESSAGE ;
 int MBEDTLS_ERR_SSL_NON_FATAL ;
 int MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY ;
 scalar_t__ MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 scalar_t__ MBEDTLS_SSL_ALERT_LEVEL_WARNING ;
 scalar_t__ MBEDTLS_SSL_ALERT_MSG_CLOSE_NOTIFY ;
 scalar_t__ MBEDTLS_SSL_ALERT_MSG_NO_CERT ;
 scalar_t__ MBEDTLS_SSL_ALERT_MSG_NO_RENEGOTIATION ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_IS_SERVER ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 scalar_t__ MBEDTLS_SSL_MSG_ALERT ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 int mbedtls_ssl_prepare_handshake_record (TYPE_2__*) ;

int mbedtls_ssl_handle_message_type( mbedtls_ssl_context *ssl )
{
    int ret;




    if( ssl->in_msgtype == MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        if( ( ret = mbedtls_ssl_prepare_handshake_record( ssl ) ) != 0 )
        {
            return( ret );
        }
    }

    if( ssl->in_msgtype == MBEDTLS_SSL_MSG_ALERT )
    {
        MBEDTLS_SSL_DEBUG_MSG( 2, ( "got an alert message, type: [%d:%d]",
                       ssl->in_msg[0], ssl->in_msg[1] ) );




        if( ssl->in_msg[0] == MBEDTLS_SSL_ALERT_LEVEL_FATAL )
        {
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "is a fatal alert message (msg %d)",
                           ssl->in_msg[1] ) );
            return( MBEDTLS_ERR_SSL_FATAL_ALERT_MESSAGE );
        }

        if( ssl->in_msg[0] == MBEDTLS_SSL_ALERT_LEVEL_WARNING &&
            ssl->in_msg[1] == MBEDTLS_SSL_ALERT_MSG_CLOSE_NOTIFY )
        {
            MBEDTLS_SSL_DEBUG_MSG( 2, ( "is a close notify message" ) );
            return( MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY );
        }
        return MBEDTLS_ERR_SSL_NON_FATAL;
    }

    return( 0 );
}
