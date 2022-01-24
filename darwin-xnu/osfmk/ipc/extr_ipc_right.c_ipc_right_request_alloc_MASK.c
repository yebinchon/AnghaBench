#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_port_urefs_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ ipc_port_request_index_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_22__ {scalar_t__ ie_request; int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_21__ {scalar_t__ ip_receiver; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ IE_REQ_NONE ; 
 int /*<<< orphan*/  IPID_OPTION_SENDPOSSIBLE ; 
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  ITS_SIZE_NONE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_RIGHT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int MACH_PORT_TYPE_DEAD_NAME ; 
 int MACH_PORT_TYPE_PORT_OR_DEAD ; 
 int MACH_PORT_TYPE_PORT_RIGHTS ; 
 int MACH_PORT_TYPE_SEND_ONCE ; 
 scalar_t__ MACH_PORT_UREFS_MAX ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__*,...) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 scalar_t__ ipc_space_kernel ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC15(
	ipc_space_t		space,
	mach_port_name_t	name,
	boolean_t		immediate,
	boolean_t		send_possible,
	ipc_port_t		notify,
	ipc_port_t		*previousp)
{
	ipc_port_request_index_t prev_request;
	ipc_port_t previous = IP_NULL;
	ipc_entry_t entry;
	kern_return_t kr;

#if IMPORTANCE_INHERITANCE
	boolean_t needboost = FALSE;
#endif /* IMPORTANCE_INHERITANCE */

	for (;;) {
		ipc_port_t port = IP_NULL;

		kr = FUNC13(space, name, &entry);
		if (kr != KERN_SUCCESS)
			return kr;

		/* space is write-locked and active */
		
		prev_request = entry->ie_request;

		/* if nothing to do or undo, we're done */
		if (notify == IP_NULL && prev_request == IE_REQ_NONE) {
			FUNC14(space);
			*previousp = IP_NULL;
			return KERN_SUCCESS;
		}

		/* see if the entry is of proper type for requests */
		if (entry->ie_bits & MACH_PORT_TYPE_PORT_RIGHTS) {
			ipc_port_request_index_t new_request;

			port = (ipc_port_t) entry->ie_object;
			FUNC1(port != IP_NULL);

			if (!FUNC12(space, port, name, entry)) {
				/* port is locked and active */

				/* if no new request, just cancel previous */
				if (notify == IP_NULL) {
					if (prev_request != IE_REQ_NONE)
						previous = FUNC10(port, name, prev_request);
					FUNC4(port);
					entry->ie_request = IE_REQ_NONE;
					FUNC5(space, name, entry);
					FUNC14(space);
					break;
				}

				/*
				 * send-once rights, kernel objects, and non-full other queues
				 * fire immediately (if immediate specified).
				 */
				if (send_possible && immediate &&
				    ((entry->ie_bits & MACH_PORT_TYPE_SEND_ONCE) ||
				     port->ip_receiver == ipc_space_kernel || !FUNC2(port))) {
					if (prev_request != IE_REQ_NONE)
						previous = FUNC10(port, name, prev_request);
					FUNC4(port);
					entry->ie_request = IE_REQ_NONE;
					FUNC5(space, name, entry);
					FUNC14(space);

					FUNC7(notify, name);
					break;
				}

				/*
				 * If there is a previous request, free it.  Any subsequent
				 * allocation cannot fail, thus assuring an atomic swap.
				 */
				if (prev_request != IE_REQ_NONE)
					previous = FUNC10(port, name, prev_request);

#if IMPORTANCE_INHERITANCE
				kr = ipc_port_request_alloc(port, name, notify,
							    send_possible, immediate,
							    &new_request, &needboost);
#else
				kr = FUNC9(port, name, notify,
							    send_possible, immediate,
							    &new_request);
#endif /* IMPORTANCE_INHERITANCE */
				if (kr != KERN_SUCCESS) {
					FUNC1(previous == IP_NULL);
					FUNC14(space);

					kr = FUNC11(port, ITS_SIZE_NONE);
					/* port is unlocked */

					if (kr != KERN_SUCCESS)
						return kr;

					continue;
				}


				FUNC1(new_request != IE_REQ_NONE);
				entry->ie_request = new_request;
				FUNC5(space, name, entry);
				FUNC14(space);

#if IMPORTANCE_INHERITANCE
				if (needboost == TRUE) {
					if (ipc_port_importance_delta(port, IPID_OPTION_SENDPOSSIBLE, 1) == FALSE)
						ip_unlock(port);
				} else
#endif /* IMPORTANCE_INHERITANCE */
					FUNC4(port);

				break;
			}
			/* entry may have changed to dead-name by ipc_right_check() */

		}

		/* treat send_possible requests as immediate w.r.t. dead-name */
		if ((send_possible || immediate) && notify != IP_NULL &&
		    (entry->ie_bits & MACH_PORT_TYPE_DEAD_NAME)) {
			mach_port_urefs_t urefs = FUNC0(entry->ie_bits);

			FUNC1(urefs > 0);

			/* leave urefs pegged to maximum if it overflowed */
			if (urefs < MACH_PORT_UREFS_MAX)
				(entry->ie_bits)++; /* increment urefs */

			FUNC5(space, name, entry);

			FUNC14(space);

			if (port != IP_NULL)
				FUNC3(port);

			FUNC6(notify, name);
			previous = IP_NULL;
			break;
		}

		kr = (entry->ie_bits & MACH_PORT_TYPE_PORT_OR_DEAD) ?
		    KERN_INVALID_ARGUMENT : KERN_INVALID_RIGHT;

		FUNC14(space);

		if (port != IP_NULL)
			FUNC3(port);

		return kr;
	}

	*previousp = previous;
	return KERN_SUCCESS;
}