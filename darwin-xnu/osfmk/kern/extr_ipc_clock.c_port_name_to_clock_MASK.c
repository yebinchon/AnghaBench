#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ clock_t ;
struct TYPE_6__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ CLOCK_NULL ; 
 scalar_t__ IKOT_CLOCK ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 

clock_t
FUNC5(
	mach_port_name_t clock_name)
{
	clock_t		clock = CLOCK_NULL;
	ipc_space_t	space;
	ipc_port_t	port;

	if (clock_name == 0)
		return (clock);
	space = FUNC0();
	if (FUNC4(space, clock_name, &port) != KERN_SUCCESS)
		return (clock);
	if (FUNC1(port) && (FUNC2(port) == IKOT_CLOCK))
		clock = (clock_t) port->ip_kobject;
	FUNC3(port);
	return (clock);
}