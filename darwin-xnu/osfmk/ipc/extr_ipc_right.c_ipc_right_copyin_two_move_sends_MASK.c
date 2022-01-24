#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int mach_port_urefs_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  int ipc_entry_bits_t ;
struct TYPE_17__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_16__ {scalar_t__ ip_srights; scalar_t__ ip_receiver; int /*<<< orphan*/  ip_receiver_name; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int IE_BITS_UREFS_MASK ; 
 scalar_t__ IO_NULL ; 
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_RIGHT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 int MACH_PORT_TYPE_SEND ; 
 int MACH_PORT_TYPE_SEND_RECEIVE ; 
 scalar_t__ MACH_PORT_UREFS_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC8 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (scalar_t__) ; 

__attribute__((used)) static
kern_return_t
FUNC10(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		entry,
	ipc_object_t		*objectp,
	ipc_port_t		*sorightp,
	ipc_port_t		*releasep)
{
	ipc_entry_bits_t bits;
	mach_port_urefs_t urefs;
	ipc_port_t port;
	ipc_port_t request = IP_NULL;

	*releasep = IP_NULL;

	FUNC2(FUNC9(space));

	bits = entry->ie_bits;

	if ((bits & MACH_PORT_TYPE_SEND) == 0)
		goto invalid_right;

	urefs = FUNC1(bits);
	if (urefs < 2)
		goto invalid_right;

	port = (ipc_port_t) entry->ie_object;
	FUNC2(port != IP_NULL);

	if (FUNC7(space, port, name, entry)) {
		*releasep = port;
		goto invalid_right;
	}
	/* port is locked and active */

	FUNC2(port->ip_srights > 0);

	if (urefs == 2) {
		if (bits & MACH_PORT_TYPE_RECEIVE) {
			FUNC2(port->ip_receiver_name == name);
			FUNC2(port->ip_receiver == space);
			FUNC2(FUNC0(bits) ==
					MACH_PORT_TYPE_SEND_RECEIVE);

			port->ip_srights++;
			FUNC3(port);
			FUNC3(port);
		} else {
			FUNC2(FUNC0(bits) == MACH_PORT_TYPE_SEND);

			request = FUNC8(space, port,
							     name, entry);

			port->ip_srights++;
			FUNC3(port);
			FUNC6(space, (ipc_object_t) port,
					name, entry);
			entry->ie_object = IO_NULL;
		}
		entry->ie_bits = bits &~ (IE_BITS_UREFS_MASK|MACH_PORT_TYPE_SEND);
	} else {
		port->ip_srights += 2;
		FUNC3(port);
		FUNC3(port);
		/* if urefs are pegged due to overflow, leave them pegged */
		if (FUNC1(bits) < MACH_PORT_UREFS_MAX)
			entry->ie_bits = bits-2; /* decrement urefs */
	}
	FUNC5(space, name, entry);

	FUNC4(port);

	*objectp = (ipc_object_t) port;
	*sorightp = request;
	return KERN_SUCCESS;

    invalid_right:
	return KERN_INVALID_RIGHT;
}