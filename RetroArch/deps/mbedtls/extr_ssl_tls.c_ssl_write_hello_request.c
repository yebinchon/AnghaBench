
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int out_msglen; int * out_msg; int out_msgtype; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_HS_HELLO_REQUEST ;
 int MBEDTLS_SSL_MSG_HANDSHAKE ;
 int mbedtls_ssl_write_record (TYPE_1__*) ;

__attribute__((used)) static int ssl_write_hello_request( mbedtls_ssl_context *ssl )
{
    int ret;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> write hello request" ) );

    ssl->out_msglen = 4;
    ssl->out_msgtype = MBEDTLS_SSL_MSG_HANDSHAKE;
    ssl->out_msg[0] = MBEDTLS_SSL_HS_HELLO_REQUEST;

    if( ( ret = mbedtls_ssl_write_record( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_write_record", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= write hello request" ) );

    return( 0 );
}
