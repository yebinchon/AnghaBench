#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {scalar_t__ integer; } ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ ip_socket ; 
 scalar_t__ ipx_socket ; 
 TYPE_2__* net_noipx ; 
 TYPE_1__* net_noudp ; 
 scalar_t__ networkingEnabled ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 scalar_t__ socks_socket ; 

void FUNC4( qboolean enableNetworking ) {
	qboolean	modified;
	qboolean	stop;
	qboolean	start;

	// get any latched changes to cvars
	modified = FUNC0();

	if( net_noudp->integer && net_noipx->integer ) {
		enableNetworking = qfalse;
	}

	// if enable state is the same and no cvars were modified, we have nothing to do
	if( enableNetworking == networkingEnabled && !modified ) {
		return;
	}

	if( enableNetworking == networkingEnabled ) {
		if( enableNetworking ) {
			stop = qtrue;
			start = qtrue;
		}
		else {
			stop = qfalse;
			start = qfalse;
		}
	}
	else {
		if( enableNetworking ) {
			stop = qfalse;
			start = qtrue;
		}
		else {
			stop = qtrue;
			start = qfalse;
		}
		networkingEnabled = enableNetworking;
	}

	if( stop ) {
		if ( ip_socket && ip_socket != INVALID_SOCKET ) {
			FUNC3( ip_socket );
			ip_socket = 0;
		}

		if ( socks_socket && socks_socket != INVALID_SOCKET ) {
			FUNC3( socks_socket );
			socks_socket = 0;
		}

		if ( ipx_socket && ipx_socket != INVALID_SOCKET ) {
			FUNC3( ipx_socket );
			ipx_socket = 0;
		}
	}

	if( start ) {
		if (! net_noudp->integer ) {
			FUNC1();
		}
		if (! net_noipx->integer ) {
			FUNC2();
		}
	}
}