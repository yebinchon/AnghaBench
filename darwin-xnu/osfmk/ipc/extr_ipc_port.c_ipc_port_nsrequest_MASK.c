#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_port_mscount_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_9__ {scalar_t__ ip_mscount; scalar_t__ ip_srights; struct TYPE_9__* ip_nsrequest; } ;

/* Variables and functions */
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 

void
FUNC4(
	ipc_port_t		port,
	mach_port_mscount_t	sync,
	ipc_port_t		notify,
	ipc_port_t		*previousp)
{
	ipc_port_t previous;
	mach_port_mscount_t mscount;

	FUNC0(FUNC1(port));

	previous = port->ip_nsrequest;
	mscount = port->ip_mscount;

	if ((port->ip_srights == 0) && (sync <= mscount) &&
	    (notify != IP_NULL)) {
		port->ip_nsrequest = IP_NULL;
		FUNC2(port);
		FUNC3(notify, mscount);
	} else {
		port->ip_nsrequest = notify;
		FUNC2(port);
	}

	*previousp = previous;
}