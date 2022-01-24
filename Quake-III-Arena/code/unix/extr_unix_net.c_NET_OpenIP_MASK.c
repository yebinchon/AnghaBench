#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int value; int /*<<< orphan*/  string; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PORT_SERVER ; 
 scalar_t__ ip_socket ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 

void FUNC6 (void)
{
	cvar_t	*ip;
	int		port;
	int		i;

	ip = FUNC1 ("net_ip", "localhost", 0);

	port = FUNC1("net_port", FUNC5("%i", PORT_SERVER), 0)->value;

	for ( i = 0 ; i < 10 ; i++ ) {
		ip_socket = FUNC4 (ip->string, port + i);
		if ( ip_socket ) {
			FUNC2( "net_port", port + i );
			FUNC3();
			return;
		}
	}
	FUNC0 (ERR_FATAL, "Couldn't allocate IP port");
}