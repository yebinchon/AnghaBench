
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ in_msgtype; scalar_t__ in_hslen; scalar_t__* in_msg; TYPE_1__* conf; int state; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_8__ {scalar_t__ transport; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO_DONE ;
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 scalar_t__ MBEDTLS_SSL_HS_SERVER_HELLO_DONE ;
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 scalar_t__ mbedtls_ssl_hs_hdr_len (TYPE_2__*) ;
 int mbedtls_ssl_read_record (TYPE_2__*) ;
 int mbedtls_ssl_recv_flight_completed (TYPE_2__*) ;
 int mbedtls_ssl_send_alert_message (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int ssl_parse_server_hello_done( mbedtls_ssl_context *ssl )
{
    int ret;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> parse server hello done" ) );

    if( ( ret = mbedtls_ssl_read_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad server hello done message" ) );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }

    if( ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) ||
        ssl->in_msg[0] != MBEDTLS_SSL_HS_SERVER_HELLO_DONE )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "bad server hello done message" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO_DONE );
    }

    ssl->state++;






    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= parse server hello done" ) );

    return( 0 );
}
