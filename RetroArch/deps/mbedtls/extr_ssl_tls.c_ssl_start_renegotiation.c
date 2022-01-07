
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ renego_status; int state; TYPE_1__* handshake; TYPE_2__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_8__ {scalar_t__ transport; scalar_t__ endpoint; } ;
struct TYPE_7__ {int out_msg_seq; int in_msg_seq; } ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_DEBUG_RET (int,char*,int) ;
 int MBEDTLS_SSL_HELLO_REQUEST ;
 scalar_t__ MBEDTLS_SSL_IS_SERVER ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_IN_PROGRESS ;
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_PENDING ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_ssl_handshake (TYPE_3__*) ;
 int ssl_handshake_init (TYPE_3__*) ;

__attribute__((used)) static int ssl_start_renegotiation( mbedtls_ssl_context *ssl )
{
    int ret;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> renegotiate" ) );

    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        return( ret );
    ssl->state = MBEDTLS_SSL_HELLO_REQUEST;
    ssl->renego_status = MBEDTLS_SSL_RENEGOTIATION_IN_PROGRESS;

    if( ( ret = mbedtls_ssl_handshake( ssl ) ) != 0 )
    {
        MBEDTLS_SSL_DEBUG_RET( 1, "mbedtls_ssl_handshake", ret );
        return( ret );
    }

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= renegotiate" ) );

    return( 0 );
}
