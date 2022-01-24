#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_port_name_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  TYPE_2__* ipc_entry_t ;
struct TYPE_13__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_12__ {scalar_t__ ip_receiver_name; scalar_t__ ip_receiver; int /*<<< orphan*/  ip_sorights; } ;

/* Variables and functions */
 TYPE_2__* IE_NULL ; 
 TYPE_1__* IP_NULL ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_2__* FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 

ipc_port_t
FUNC8(
	ipc_space_t		space,
	mach_port_name_t	name)
{
	ipc_port_t port;
	ipc_entry_t entry;

	FUNC1(FUNC7(space));

	entry = FUNC6(space, name);
	if (entry == IE_NULL)
		return IP_NULL;
	if ((entry->ie_bits & MACH_PORT_TYPE_RECEIVE) == 0)
		return IP_NULL;

	FUNC0(port = (ipc_port_t) entry->ie_object);
	FUNC1(port != IP_NULL);

	FUNC3(port);
	FUNC1(FUNC2(port));
	FUNC1(port->ip_receiver_name == name);
	FUNC1(port->ip_receiver == space);

	FUNC4(port);
	port->ip_sorights++;
	FUNC5(port);

	return port;
}