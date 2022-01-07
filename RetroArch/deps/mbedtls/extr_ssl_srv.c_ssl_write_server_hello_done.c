
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int out_msglen; TYPE_1__* conf; int state; int * out_msg; int out_msgtype; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_6__ {scalar_t__ transport; } ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_HS_SERVER_HELLO_DONE ;
 int MBEDTLS_SSL_MSG_HANDSHAKE ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_ssl_send_flight_completed (TYPE_2__*) ;
 int mbedtls_ssl_write_record (TYPE_2__*) ;

__attribute__((used)) static int ssl_write_server_hello_done( mbedtls_ssl_context *ssl )
{
    int ret;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write server hello done" ) );

    ssl->out_msglen = 4;
    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0] = MBEDTLS_SSL_HS_SERVER_HELLO_DONE;

    ssl->state++;






    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write server hello done" ) );

    return( 0 );
}
