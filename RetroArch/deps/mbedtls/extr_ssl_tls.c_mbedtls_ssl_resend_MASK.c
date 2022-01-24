#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; scalar_t__* p; struct TYPE_9__* next; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ mbedtls_ssl_flight_item ;
struct TYPE_10__ {scalar_t__ out_msgtype; scalar_t__ state; TYPE_1__* handshake; int /*<<< orphan*/  out_msg; int /*<<< orphan*/  out_msglen; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_8__ {scalar_t__ retransmit_state; int /*<<< orphan*/  retransmit_timeout; TYPE_2__* cur_msg; TYPE_2__* flight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ; 
 scalar_t__ MBEDTLS_SSL_HS_FINISHED ; 
 scalar_t__ MBEDTLS_SSL_MSG_HANDSHAKE ; 
 scalar_t__ MBEDTLS_SSL_RETRANS_FINISHED ; 
 scalar_t__ MBEDTLS_SSL_RETRANS_SENDING ; 
 scalar_t__ MBEDTLS_SSL_RETRANS_WAITING ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

int FUNC7( mbedtls_ssl_context *ssl )
{
    FUNC1( 2, ( "=> mbedtls_ssl_resend" ) );

    if( ssl->handshake->retransmit_state != MBEDTLS_SSL_RETRANS_SENDING )
    {
        FUNC1( 2, ( "initialise resending" ) );

        ssl->handshake->cur_msg = ssl->handshake->flight;
        FUNC6( ssl );

        ssl->handshake->retransmit_state = MBEDTLS_SSL_RETRANS_SENDING;
    }

    while( ssl->handshake->cur_msg != NULL )
    {
        int ret;
        mbedtls_ssl_flight_item *cur = ssl->handshake->cur_msg;

        /* Swap epochs before sending Finished: we can't do it after
         * sending ChangeCipherSpec, in case write returns WANT_READ.
         * Must be done before copying, may change out_msg pointer */
        if( cur->type == MBEDTLS_SSL_MSG_HANDSHAKE &&
            cur->p[0] == MBEDTLS_SSL_HS_FINISHED )
        {
            FUNC6( ssl );
        }

        FUNC4( ssl->out_msg, cur->p, cur->len );
        ssl->out_msglen = cur->len;
        ssl->out_msgtype = cur->type;

        ssl->handshake->cur_msg = cur->next;

        FUNC0( 3, "resent handshake message header", ssl->out_msg, 12 );

        if( ( ret = FUNC3( ssl ) ) != 0 )
        {
            FUNC2( 1, "mbedtls_ssl_write_record", ret );
            return( ret );
        }
    }

    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
        ssl->handshake->retransmit_state = MBEDTLS_SSL_RETRANS_FINISHED;
    else
    {
        ssl->handshake->retransmit_state = MBEDTLS_SSL_RETRANS_WAITING;
        FUNC5( ssl, ssl->handshake->retransmit_timeout );
    }

    FUNC1( 2, ( "<= mbedtls_ssl_resend" ) );

    return( 0 );
}