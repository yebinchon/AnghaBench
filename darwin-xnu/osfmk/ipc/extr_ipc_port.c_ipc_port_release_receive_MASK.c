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
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_10__ {scalar_t__ ip_receiver_name; struct TYPE_10__* ip_destination; } ;

/* Variables and functions */
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(
	ipc_port_t	port)
{
	ipc_port_t dest;

	if (!FUNC0(port))
		return;

	FUNC3(port);
	FUNC1(FUNC2(port));
	FUNC1(port->ip_receiver_name == MACH_PORT_NULL);
	dest = port->ip_destination;

	FUNC5(port); /* consumes ref, unlocks */

	if (dest != IP_NULL) {
		FUNC6(dest);
		FUNC4(dest);
	}
}