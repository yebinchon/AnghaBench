#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_port_name_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_11__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_10__ {scalar_t__ ip_receiver; scalar_t__ ip_receiver_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__* IE_NULL ; 
 scalar_t__ IOT_PORT ; 
 scalar_t__ MACH_PORT_NULL ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 scalar_t__ MACH_PORT_TYPE_SEND ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_2__* FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__*,TYPE_2__**) ; 
 int FUNC8 (scalar_t__) ; 

boolean_t
FUNC9(
	ipc_space_t		space,
	ipc_object_t		object,
	mach_port_name_t	*namep,
	ipc_entry_t		*entryp)
{
	ipc_port_t port;
	mach_port_name_t name;
	ipc_entry_t entry;

	/* would switch on io_otype to handle multiple types of object */

	FUNC1(FUNC8(space));
	FUNC1(FUNC2(object) == IOT_PORT);

	port = (ipc_port_t) object;

	FUNC4(port);
	if (!FUNC3(port)) {
		FUNC5(port);

		return FALSE;
	}

	if (port->ip_receiver == space) {
		name = port->ip_receiver_name;
		FUNC1(name != MACH_PORT_NULL);

		entry = FUNC6(space, name);

		FUNC1(entry != IE_NULL);
		FUNC1(entry->ie_bits & MACH_PORT_TYPE_RECEIVE);
		FUNC1(port == (ipc_port_t) entry->ie_object);

		*namep = name;
		*entryp = entry;
		return TRUE;
	}

	if (FUNC7(space, (ipc_object_t) port, namep, entryp)) {
		FUNC1((entry = *entryp) != IE_NULL);
		FUNC1(FUNC0(entry->ie_bits) == MACH_PORT_TYPE_SEND);
		FUNC1(port == (ipc_port_t) entry->ie_object);

		return TRUE;
	}

	FUNC5(port);
	return FALSE;
}