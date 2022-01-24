#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char* p; int len; struct TYPE_7__* next; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ mbedtls_ssl_flight_item ;
struct TYPE_8__ {int out_msglen; TYPE_1__* handshake; int /*<<< orphan*/  out_msgtype; int /*<<< orphan*/  out_msg; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_6__ {TYPE_2__* flight; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_ALLOC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_flight_item *msg;

    /* Allocate space for current message */
    if( ( msg = (mbedtls_ssl_flight_item*)
             FUNC1( 1, sizeof(  mbedtls_ssl_flight_item ) ) ) == NULL )
    {
        FUNC0( 1, ( "alloc %d bytes failed",
                            sizeof( mbedtls_ssl_flight_item ) ) );
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }

    if( ( msg->p = (unsigned char*)FUNC1( 1, ssl->out_msglen ) ) == NULL )
    {
        FUNC0( 1, ( "alloc %d bytes failed", ssl->out_msglen ) );
        FUNC2( msg );
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }

    /* Copy current handshake message with headers */
    FUNC3( msg->p, ssl->out_msg, ssl->out_msglen );
    msg->len = ssl->out_msglen;
    msg->type = ssl->out_msgtype;
    msg->next = NULL;

    /* Append to the current flight */
    if( ssl->handshake->flight == NULL )
        ssl->handshake->flight = msg;
    else
    {
        mbedtls_ssl_flight_item *cur = ssl->handshake->flight;
        while( cur->next != NULL )
            cur = cur->next;
        cur->next = msg;
    }

    return( 0 );
}