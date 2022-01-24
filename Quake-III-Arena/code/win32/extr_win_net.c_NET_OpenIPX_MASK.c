#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_LATCH ; 
 TYPE_1__* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PORT_SERVER ; 
 int /*<<< orphan*/  ipx_socket ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3( void ) {
	int		port;

	port = FUNC0( "net_port", FUNC2( "%i", PORT_SERVER ), CVAR_LATCH )->integer;
	ipx_socket = FUNC1( port );
}