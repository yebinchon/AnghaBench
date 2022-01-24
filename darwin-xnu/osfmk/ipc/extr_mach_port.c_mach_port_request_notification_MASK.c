#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_port_mscount_t ;
typedef  int mach_msg_id_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  TYPE_2__* ipc_entry_t ;
struct TYPE_5__ {scalar_t__ ie_object; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ip_subsystem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IKOT_NONE ; 
 scalar_t__ IP_DEAD ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_INVALID_CAPABILITY ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_INVALID_VALUE ; 
 scalar_t__ KERN_SUCCESS ; 
#define  MACH_NOTIFY_DEAD_NAME 131 
#define  MACH_NOTIFY_NO_SENDERS 130 
#define  MACH_NOTIFY_PORT_DESTROYED 129 
#define  MACH_NOTIFY_SEND_POSSIBLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

kern_return_t
FUNC10(
	ipc_space_t		space,
	mach_port_name_t	name,
	mach_msg_id_t		id,
	mach_port_mscount_t	sync,
	ipc_port_t		notify,
	ipc_port_t		*previousp)
{
	kern_return_t kr;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (notify == IP_DEAD)
		return KERN_INVALID_CAPABILITY;

#if	NOTYET
	/*
	 *	Requesting notifications on RPC ports is an error.
	 */
	{
		ipc_port_t port;
		ipc_entry_t entry;	

		kr = ipc_right_lookup_write(space, name, &entry);	
		if (kr != KERN_SUCCESS)
			return kr;

		port = (ipc_port_t) entry->ie_object;

		if (port->ip_subsystem != NULL) {
			is_write_unlock(space);
			panic("mach_port_request_notification: on RPC port!!"); 
			return KERN_INVALID_CAPABILITY;
		}
		is_write_unlock(space);
	}
#endif 	/* NOTYET */


	switch (id) {
	    case MACH_NOTIFY_PORT_DESTROYED: {
		ipc_port_t port, previous;

		if (sync != 0)
			return KERN_INVALID_VALUE;

		if (!FUNC0(name))
			return KERN_INVALID_RIGHT;

		kr = FUNC5(space, name, &port);
		if (kr != KERN_SUCCESS)
			return kr;
		/* port is locked and active */

		/* you cannot register for port death notifications on a kobject */
		if (FUNC1(port) != IKOT_NONE) {
			FUNC2(port);
			return KERN_INVALID_RIGHT;
		}

		FUNC4(port, notify, &previous);
		/* port is unlocked */

		*previousp = previous;
		break;
	    }

	    case MACH_NOTIFY_NO_SENDERS: {
		ipc_port_t port;

		if (!FUNC0(name))
			return KERN_INVALID_RIGHT;

		kr = FUNC5(space, name, &port);
		if (kr != KERN_SUCCESS)
			return kr;
		/* port is locked and active */

		FUNC3(port, sync, notify, previousp);
		/* port is unlocked */
		break;
	    }

	    case MACH_NOTIFY_SEND_POSSIBLE:

	    	if (!FUNC0(name)) {
	      		return KERN_INVALID_ARGUMENT;
		}

		kr = FUNC7(space, name, sync != 0,
					     TRUE, notify, previousp);
		if (kr != KERN_SUCCESS)
			return kr;
		break;

	    case MACH_NOTIFY_DEAD_NAME:

	    	if (!FUNC0(name)) {
			/*
			 * Already dead.
			 * Should do immediate delivery check -
			 * will do that in the near future.
			 */
	      		return KERN_INVALID_ARGUMENT;
		}

		kr = FUNC7(space, name, sync != 0,
					     FALSE, notify, previousp);
		if (kr != KERN_SUCCESS)
			return kr;
		break;

	    default:
		return KERN_INVALID_VALUE;
	}

	return KERN_SUCCESS;
}