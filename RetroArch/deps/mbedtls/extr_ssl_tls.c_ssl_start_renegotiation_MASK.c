#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ renego_status; int /*<<< orphan*/  state; TYPE_1__* handshake; TYPE_2__* conf; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_8__ {scalar_t__ transport; scalar_t__ endpoint; } ;
struct TYPE_7__ {int out_msg_seq; int in_msg_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  MBEDTLS_SSL_HELLO_REQUEST ; 
 scalar_t__ MBEDTLS_SSL_IS_SERVER ; 
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_IN_PROGRESS ; 
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_PENDING ; 
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4( mbedtls_ssl_context *ssl )
{
    int ret;

    FUNC0( 2, ( "=> renegotiate" ) );

    if( ( ret = FUNC3( ssl ) ) != 0 )
        return( ret );

    /* RFC 6347 4.2.2: "[...] the HelloRequest will have message_seq = 0 and
     * the ServerHello will have message_seq = 1" */
#if defined(MBEDTLS_SSL_PROTO_DTLS)
    if( ssl->conf->transport == MBEDTLS_SSL_TRANSPORT_DATAGRAM &&
        ssl->renego_status == MBEDTLS_SSL_RENEGOTIATION_PENDING )
    {
        if( ssl->conf->endpoint == MBEDTLS_SSL_IS_SERVER )
            ssl->handshake->out_msg_seq = 1;
        else
            ssl->handshake->in_msg_seq = 1;
    }
#endif

    ssl->state = MBEDTLS_SSL_HELLO_REQUEST;
    ssl->renego_status = MBEDTLS_SSL_RENEGOTIATION_IN_PROGRESS;

    if( ( ret = FUNC2( ssl ) ) != 0 )
    {
        FUNC1( 1, "mbedtls_ssl_handshake", ret );
        return( ret );
    }

    FUNC0( 2, ( "<= renegotiate" ) );

    return( 0 );
}