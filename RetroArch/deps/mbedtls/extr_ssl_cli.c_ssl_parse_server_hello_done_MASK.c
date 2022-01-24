#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ in_msgtype; scalar_t__ in_hslen; scalar_t__* in_msg; TYPE_1__* conf; int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
struct TYPE_8__ {scalar_t__ transport; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO_DONE ; 
 int MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ MBEDTLS_SSL_HS_SERVER_HELLO_DONE ; 
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ; 
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( mbedtls_ssl_context *ssl )
{
    int ret;

    FUNC0( 2, ( "=> parse server hello done" ) );

    if( ( ret = FUNC3( ssl ) ) != 0 )
    {
        FUNC1( 1, "mbedtls_ssl_read_record", ret );
        return( ret );
    }

    if( ssl->in_msgtype != MBEDTLS_SSL_MSG_HANDSHAKE )
    {
        FUNC0( 1, ( "bad server hello done message" ) );
        return( MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE );
    }

    if( ssl->in_hslen  != FUNC2( ssl ) ||
        ssl->in_msg[0] != MBEDTLS_SSL_HS_SERVER_HELLO_DONE )
    {
        FUNC0( 1, ( "bad server hello done message" ) );
        FUNC5( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO_DONE );
    }

    ssl->state++;

#if defined(MBEDTLS_SSL_PROTO_DTLS)
    if( ssl->conf->transport == MBEDTLS_SSL_TRANSPORT_DATAGRAM )
        mbedtls_ssl_recv_flight_completed( ssl );
#endif

    FUNC0( 2, ( "<= parse server hello done" ) );

    return( 0 );
}