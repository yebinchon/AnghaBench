#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; scalar_t__ renego_status; TYPE_1__* conf; scalar_t__ out_ctr; scalar_t__ in_ctr; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
struct TYPE_6__ {scalar_t__ disable_renegotiation; scalar_t__ renego_period; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ; 
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_DISABLED ; 
 scalar_t__ MBEDTLS_SSL_RENEGOTIATION_PENDING ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (scalar_t__,scalar_t__,int) ; 
 size_t FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4( mbedtls_ssl_context *ssl )
{
    size_t ep_len = FUNC3( ssl );
    int in_ctr_cmp;
    int out_ctr_cmp;

    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER ||
        ssl->renego_status == MBEDTLS_SSL_RENEGOTIATION_PENDING ||
        ssl->conf->disable_renegotiation == MBEDTLS_SSL_RENEGOTIATION_DISABLED )
    {
        return( 0 );
    }

    in_ctr_cmp = FUNC2( ssl->in_ctr + ep_len,
                        ssl->conf->renego_period + ep_len, 8 - ep_len );
    out_ctr_cmp = FUNC2( ssl->out_ctr + ep_len,
                          ssl->conf->renego_period + ep_len, 8 - ep_len );

    if( in_ctr_cmp <= 0 && out_ctr_cmp <= 0 )
    {
        return( 0 );
    }

    FUNC0( 1, ( "record counter limit reached: renegotiate" ) );
    return( FUNC1( ssl ) );
}