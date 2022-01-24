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
struct TYPE_4__ {int integer; int /*<<< orphan*/  string; } ;
typedef  TYPE_1__ cvar_t ;
struct TYPE_5__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_LATCH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  PORT_SERVER ; 
 scalar_t__ ip_socket ; 
 TYPE_2__* net_socksEnabled ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 

void FUNC7( void ) {
	cvar_t	*ip;
	int		port;
	int		i;

	ip = FUNC1( "net_ip", "localhost", CVAR_LATCH );
	port = FUNC1( "net_port", FUNC6( "%i", PORT_SERVER ), CVAR_LATCH )->integer;

	// automatically scan for a valid port, so multiple
	// dedicated servers can be started without requiring
	// a different net_port for each one
	for( i = 0 ; i < 10 ; i++ ) {
		ip_socket = FUNC4( ip->string, port + i );
		if ( ip_socket ) {
			FUNC2( "net_port", port + i );
			if ( net_socksEnabled->integer ) {
				FUNC5( port + i );
			}
			FUNC3();
			return;
		}
	}
	FUNC0( "WARNING: Couldn't allocate IP port\n");
}