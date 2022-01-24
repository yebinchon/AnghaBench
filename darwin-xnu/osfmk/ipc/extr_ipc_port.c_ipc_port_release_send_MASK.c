#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_mscount_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_10__ {scalar_t__ ip_srights; scalar_t__ ip_nsrequest; int /*<<< orphan*/  ip_mscount; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*) ; 

void
FUNC8(
	ipc_port_t	port)
{
	ipc_port_t nsrequest = IP_NULL;
	mach_port_mscount_t mscount;

	if (!FUNC0(port))
		return;

	FUNC3(port);

	FUNC1(port->ip_srights > 0);
	if (port->ip_srights == 0) {
		FUNC7("Over-release of port %p send right!", port);
	}

	port->ip_srights--;

	if (!FUNC2(port)) {
		FUNC5(port);
		FUNC4(port);
		return;
	}

	if (port->ip_srights == 0 &&
	    port->ip_nsrequest != IP_NULL) {
		nsrequest = port->ip_nsrequest;
		port->ip_nsrequest = IP_NULL;
		mscount = port->ip_mscount;
		FUNC5(port);
		FUNC4(port);
		FUNC6(nsrequest, mscount);
	} else {
		FUNC5(port);
		FUNC4(port);
	}
}