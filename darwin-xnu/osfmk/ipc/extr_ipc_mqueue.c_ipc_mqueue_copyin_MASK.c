#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  TYPE_1__* ipc_pset_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  int /*<<< orphan*/ * ipc_mqueue_t ;
typedef  TYPE_3__* ipc_entry_t ;
struct TYPE_14__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_13__ {scalar_t__ ip_receiver; int /*<<< orphan*/  ips_messages; int /*<<< orphan*/  ip_messages; int /*<<< orphan*/  ip_receiver_name; } ;

/* Variables and functions */
 TYPE_3__* IE_NULL ; 
 TYPE_1__* IPS_NULL ; 
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  MACH_MSG_SUCCESS ; 
 int MACH_PORT_TYPE_PORT_SET ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 int /*<<< orphan*/  MACH_RCV_INVALID_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_3__* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

mach_msg_return_t
FUNC12(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_mqueue_t		*mqueuep,
	ipc_object_t		*objectp)
{
	ipc_entry_t entry;
	ipc_object_t object;
	ipc_mqueue_t mqueue;

	FUNC10(space);
	if (!FUNC9(space)) {
		FUNC11(space);
		return MACH_RCV_INVALID_NAME;
	}

	entry = FUNC6(space, name);
	if (entry == IE_NULL) {
		FUNC11(space);
		return MACH_RCV_INVALID_NAME;
	}

	object = entry->ie_object;

	if (entry->ie_bits & MACH_PORT_TYPE_RECEIVE) {
		ipc_port_t port;

		FUNC0(port = (ipc_port_t) object);
		FUNC1(port != IP_NULL);

		FUNC5(port);
		FUNC1(FUNC4(port));
		FUNC1(port->ip_receiver_name == name);
		FUNC1(port->ip_receiver == space);
		FUNC11(space);
		mqueue = &port->ip_messages;

	} else if (entry->ie_bits & MACH_PORT_TYPE_PORT_SET) {
		ipc_pset_t pset;

		FUNC0(pset = (ipc_pset_t) object);
		FUNC1(pset != IPS_NULL);

		FUNC8(pset);
		FUNC1(FUNC7(pset));
		FUNC11(space);

		mqueue = &pset->ips_messages;
	} else {
		FUNC11(space);
		return MACH_RCV_INVALID_NAME;
	}

	/*
	 *	At this point, the object is locked and active,
	 *	the space is unlocked, and mqueue is initialized.
	 */

	FUNC2(object);
	FUNC3(object);

	*objectp = object;
	*mqueuep = mqueue;
	return MACH_MSG_SUCCESS;
}