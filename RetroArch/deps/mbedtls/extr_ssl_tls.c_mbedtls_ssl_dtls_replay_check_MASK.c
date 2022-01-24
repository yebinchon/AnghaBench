#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ in_window_top; scalar_t__ in_window; TYPE_1__* conf; scalar_t__ in_ctr; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
struct TYPE_4__ {scalar_t__ anti_replay; } ;

/* Variables and functions */
 scalar_t__ MBEDTLS_SSL_ANTI_REPLAY_DISABLED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 

int FUNC1( mbedtls_ssl_context *ssl )
{
    uint64_t rec_seqnum = FUNC0( ssl->in_ctr + 2 );
    uint64_t bit;

    if( ssl->conf->anti_replay == MBEDTLS_SSL_ANTI_REPLAY_DISABLED )
        return( 0 );

    if( rec_seqnum > ssl->in_window_top )
        return( 0 );

    bit = ssl->in_window_top - rec_seqnum;

    if( bit >= 64 )
        return( -1 );

    if( ( ssl->in_window & ( (uint64_t) 1 << bit ) ) != 0 )
        return( -1 );

    return( 0 );
}