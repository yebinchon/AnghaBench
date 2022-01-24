#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int mach_port_urefs_t ;
typedef  int mach_port_right_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_port_mscount_t ;
typedef  int mach_port_delta_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_pset_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  int ipc_entry_bits_t ;
struct TYPE_24__ {int ie_bits; void* ie_object; int /*<<< orphan*/  ie_request; } ;
struct TYPE_23__ {scalar_t__ ip_receiver; int /*<<< orphan*/  ip_receiver_name; int /*<<< orphan*/  ip_mscount; struct TYPE_23__* ip_nsrequest; int /*<<< orphan*/  ip_srights; int /*<<< orphan*/  ip_sorights; int /*<<< orphan*/ * ip_pdrequest; int /*<<< orphan*/  ip_context; int /*<<< orphan*/  ip_guarded; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IE_BITS_TYPE_MASK ; 
 int FUNC1 (int) ; 
 int IE_BITS_UREFS_MASK ; 
 int /*<<< orphan*/  IE_REQ_NONE ; 
 void* IO_NULL ; 
 int /*<<< orphan*/  IPS_NULL ; 
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_RIGHT ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
#define  MACH_PORT_RIGHT_DEAD_NAME 133 
#define  MACH_PORT_RIGHT_LABELH 132 
 int MACH_PORT_RIGHT_NUMBER ; 
#define  MACH_PORT_RIGHT_PORT_SET 131 
#define  MACH_PORT_RIGHT_RECEIVE 130 
#define  MACH_PORT_RIGHT_SEND 129 
#define  MACH_PORT_RIGHT_SEND_ONCE 128 
 int MACH_PORT_TYPE_DEAD_NAME ; 
 int MACH_PORT_TYPE_PORT_SET ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 int MACH_PORT_TYPE_SEND ; 
 int MACH_PORT_TYPE_SEND_ONCE ; 
 int MACH_PORT_TYPE_SEND_RECEIVE ; 
 int MACH_PORT_TYPE_SEND_RIGHTS ; 
 int MACH_PORT_UREFS_MAX ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC20 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_RIGHT ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_VALUE ; 
 int /*<<< orphan*/  kGUARD_EXC_MOD_REFS ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,int /*<<< orphan*/ ,void*,void*) ; 

kern_return_t
FUNC27(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		entry,
	mach_port_right_t	right,
	mach_port_delta_t	delta)
{
	ipc_port_t port = IP_NULL;
	ipc_entry_bits_t bits;

	bits = entry->ie_bits;

/*
 *	The following is used (for case MACH_PORT_RIGHT_DEAD_NAME) in the
 *	switch below. It is used to keep track of those cases (in DIPC)
 *	where we have postponed the dropping of a port reference. Since
 *	the dropping of the reference could cause the port to disappear
 *	we postpone doing so when we are holding the space lock.
 */

	FUNC4(FUNC23(space));
	FUNC4(right < MACH_PORT_RIGHT_NUMBER);

	/* Rights-specific restrictions and operations. */

	switch (right) {
	    case MACH_PORT_RIGHT_PORT_SET: {
		ipc_pset_t pset;

		if ((bits & MACH_PORT_TYPE_PORT_SET) == 0) {
			FUNC25(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
			goto invalid_right;
		}

		FUNC4(FUNC0(bits) == MACH_PORT_TYPE_PORT_SET);
		FUNC4(FUNC1(bits) == 0);
		FUNC4(entry->ie_request == IE_REQ_NONE);

		if (delta == 0)
			goto success;

		if (delta != -1)
			goto invalid_value;

		pset = (ipc_pset_t) entry->ie_object;
		FUNC4(pset != IPS_NULL);

		entry->ie_object = IO_NULL;
		FUNC10(space, name, entry);

		FUNC22(pset);
		FUNC4(FUNC21(pset));
		FUNC24(space);

		FUNC18(pset); /* consumes ref, unlocks */
		break;
	    }

	    case MACH_PORT_RIGHT_RECEIVE: {
		ipc_port_t request = IP_NULL;

		if ((bits & MACH_PORT_TYPE_RECEIVE) == 0) {
			FUNC25(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
			goto invalid_right;
		}

		if (delta == 0)
			goto success;

		if (delta != -1)
			goto invalid_value;

		port = (ipc_port_t) entry->ie_object;
		FUNC4(port != IP_NULL);

		/*
		 *	The port lock is needed for ipc_right_dncancel;
		 *	otherwise, we wouldn't have to take the lock
		 *	until just before dropping the space lock.
		 */

		FUNC6(port);
		FUNC4(FUNC5(port));
		FUNC4(port->ip_receiver_name == name);
		FUNC4(port->ip_receiver == space);
		
		/* Mach Port Guard Checking */
		if(port->ip_guarded) {
			uint64_t portguard = port->ip_context;
			FUNC9(port);
			FUNC24(space);
			/* Raise mach port guard exception */
			FUNC25(name, 0, portguard, kGUARD_EXC_MOD_REFS);
			goto guard_failure;
		}
	
		if (bits & MACH_PORT_TYPE_SEND) {
			FUNC4(FUNC0(bits) ==
					MACH_PORT_TYPE_SEND_RECEIVE);
			FUNC4(FUNC1(bits) > 0);
			FUNC4(port->ip_srights > 0);

			if (port->ip_pdrequest != NULL) {
				/*
				 * Since another task has requested a
				 * destroy notification for this port, it
				 * isn't actually being destroyed - the receive
				 * right is just being moved to another task.
				 * Since we still have one or more send rights,
				 * we need to record the loss of the receive
				 * right and enter the remaining send right
				 * into the hash table.
				 */
				FUNC11(space, name, entry);
				entry->ie_bits &= ~MACH_PORT_TYPE_RECEIVE;
				FUNC13(space, (ipc_object_t) port,
				    name, entry);
				FUNC7(port);
			} else {
				/*
				 *	The remaining send right turns into a
				 *	dead name.  Notice we don't decrement
				 *	ip_srights, generate a no-senders notif,
				 *	or use ipc_right_dncancel, because the
				 *	port is destroyed "first".
				 */
				bits &= ~IE_BITS_TYPE_MASK;
				bits |= MACH_PORT_TYPE_DEAD_NAME;
				if (entry->ie_request) {
					entry->ie_request = IE_REQ_NONE;
					/* if urefs are pegged due to overflow, leave them pegged */
					if (FUNC1(bits) < MACH_PORT_UREFS_MAX)
						bits++; /* increment urefs */
				}
				entry->ie_bits = bits;
				entry->ie_object = IO_NULL;
				FUNC11(space, name, entry);
			}
		} else {
			FUNC4(FUNC0(bits) == MACH_PORT_TYPE_RECEIVE);
			FUNC4(FUNC1(bits) == 0);

			request = FUNC20(space, port,
							     name, entry);
			entry->ie_object = IO_NULL;
			FUNC10(space, name, entry);
		}
		FUNC24(space);

		FUNC17(port);	/* clears receiver, consumes ref, unlocks */

		if (request != IP_NULL)
			FUNC15(request, name);
		break;
	    }

	    case MACH_PORT_RIGHT_SEND_ONCE: {
		ipc_port_t request;

		if ((bits & MACH_PORT_TYPE_SEND_ONCE) == 0)
			goto invalid_right;

		FUNC4(FUNC0(bits) == MACH_PORT_TYPE_SEND_ONCE);
		FUNC4(FUNC1(bits) == 1);

		port = (ipc_port_t) entry->ie_object;
		FUNC4(port != IP_NULL);

		if (FUNC19(space, port, name, entry)) {
			FUNC4(!(entry->ie_bits & MACH_PORT_TYPE_SEND_ONCE));
			FUNC25(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
			goto invalid_right;
		}
		/* port is locked and active */

		FUNC4(port->ip_sorights > 0);

		if ((delta > 0) || (delta < -1)) {
			FUNC9(port);
			goto invalid_value;
		}

		if (delta == 0) {
			FUNC9(port);
			goto success;
		}

		request = FUNC20(space, port, name, entry);
		FUNC9(port);

		entry->ie_object = IO_NULL;
		FUNC10(space, name, entry);

		FUNC24(space);

		FUNC16(port);

		if (request != IP_NULL)
			FUNC15(request, name);
		break;
	    }

	    case MACH_PORT_RIGHT_DEAD_NAME: {
		ipc_port_t relport = IP_NULL;
		mach_port_urefs_t urefs;

		if (bits & MACH_PORT_TYPE_SEND_RIGHTS) {

			port = (ipc_port_t) entry->ie_object;
			FUNC4(port != IP_NULL);

			if (!FUNC19(space, port, name, entry)) {
				/* port is locked and active */
				FUNC9(port);
				port = IP_NULL;
				FUNC25(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
				goto invalid_right;
			}
			bits = entry->ie_bits;
			relport = port;
			port = IP_NULL;
		} else if ((bits & MACH_PORT_TYPE_DEAD_NAME) == 0) {
			FUNC25(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
			goto invalid_right;
		}

		FUNC4(FUNC0(bits) == MACH_PORT_TYPE_DEAD_NAME);
		FUNC4(FUNC1(bits) > 0);
		FUNC4(entry->ie_object == IO_NULL);
		FUNC4(entry->ie_request == IE_REQ_NONE);

		if (delta >   ((mach_port_delta_t)MACH_PORT_UREFS_MAX) ||
		    delta < (-((mach_port_delta_t)MACH_PORT_UREFS_MAX))) {
			goto invalid_value;
		}

		urefs = FUNC1(bits);

		if (urefs == MACH_PORT_UREFS_MAX) {
			/*
			 * urefs are pegged due to an overflow
			 * only a delta removing all refs at once can change it
			 */

			if (delta != (-((mach_port_delta_t)MACH_PORT_UREFS_MAX)))
				delta = 0;
		} else {
			if (FUNC3(urefs, delta))
				goto invalid_value;
			if (FUNC2(urefs, delta)) {
				/* leave urefs pegged to maximum if it overflowed */
				delta = MACH_PORT_UREFS_MAX - urefs;
			}
		}

		if ((urefs + delta) == 0) {
			FUNC10(space, name, entry);
		} else if (delta != 0) {
			entry->ie_bits = bits + delta;
			FUNC11(space, name, entry);
		}

		FUNC24(space);

		if (relport != IP_NULL)
			FUNC8(relport);

		break;
	    }

	    case MACH_PORT_RIGHT_SEND: {
		mach_port_urefs_t urefs;
		ipc_port_t request = IP_NULL;
		ipc_port_t nsrequest = IP_NULL;
		ipc_port_t port_to_release = IP_NULL;
		mach_port_mscount_t mscount = 0;

		if ((bits & MACH_PORT_TYPE_SEND) == 0) {
			/* invalid right exception only when not live/dead confusion */
			if ((bits & MACH_PORT_TYPE_DEAD_NAME) == 0) {
				FUNC25(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
			}
			goto invalid_right;
		}

		/* maximum urefs for send is MACH_PORT_UREFS_MAX */

		port = (ipc_port_t) entry->ie_object;
		FUNC4(port != IP_NULL);

		if (FUNC19(space, port, name, entry)) {
			FUNC4((entry->ie_bits & MACH_PORT_TYPE_SEND) == 0);
			goto invalid_right;
		}
		/* port is locked and active */

		FUNC4(port->ip_srights > 0);

		if (delta >   ((mach_port_delta_t)MACH_PORT_UREFS_MAX) ||
		    delta < (-((mach_port_delta_t)MACH_PORT_UREFS_MAX))) {
			FUNC9(port);
			goto invalid_value;
		}

		urefs = FUNC1(bits);

		if (urefs == MACH_PORT_UREFS_MAX) {
			/*
			 * urefs are pegged due to an overflow
			 * only a delta removing all refs at once can change it
			 */

			if (delta != (-((mach_port_delta_t)MACH_PORT_UREFS_MAX)))
				delta = 0;
		} else {
			if (FUNC3(urefs, delta)) {
				FUNC9(port);
				goto invalid_value;
			}
			if (FUNC2(urefs, delta)) {
				/* leave urefs pegged to maximum if it overflowed */
				delta = MACH_PORT_UREFS_MAX - urefs;
			}
		}

		if ((urefs + delta) == 0) {
			if (--port->ip_srights == 0) {
				nsrequest = port->ip_nsrequest;
				if (nsrequest != IP_NULL) {
					port->ip_nsrequest = IP_NULL;
					mscount = port->ip_mscount;
				}
			}

			if (bits & MACH_PORT_TYPE_RECEIVE) {
				FUNC4(port->ip_receiver_name == name);
				FUNC4(port->ip_receiver == space);
				FUNC9(port);
				FUNC4(FUNC0(bits) ==
						MACH_PORT_TYPE_SEND_RECEIVE);

				entry->ie_bits = bits &~ (IE_BITS_UREFS_MASK|
						       MACH_PORT_TYPE_SEND);
				FUNC11(space, name, entry);
			} else {
				FUNC4(FUNC0(bits) ==
						MACH_PORT_TYPE_SEND);

				request = FUNC20(space, port,
								     name, entry);
				FUNC12(space, (ipc_object_t) port,
						name, entry);

				FUNC9(port);
				port_to_release = port;

				entry->ie_object = IO_NULL;
				FUNC10(space, name, entry);
			}
		} else if (delta != 0) {
			FUNC9(port);
			entry->ie_bits = bits + delta;
			FUNC11(space, name, entry);
		} else {
			FUNC9(port);
		}

		FUNC24(space);

		if (port_to_release != IP_NULL)
			FUNC8(port_to_release);

		if (nsrequest != IP_NULL)
			FUNC14(nsrequest, mscount);

		if (request != IP_NULL)
			FUNC15(request, name);
		break;
	    }

	    case MACH_PORT_RIGHT_LABELH:
		goto invalid_right;

	    default:
		FUNC26("ipc_right_delta: strange right %d for 0x%x (%p) in space:%p",
		      right, name, (void *)entry, (void *)space);
	}

	return KERN_SUCCESS;

    success:
	FUNC24(space);
	return KERN_SUCCESS;

    invalid_right:
	FUNC24(space);
	if (port != IP_NULL)
		FUNC8(port);
	return KERN_INVALID_RIGHT;

    invalid_value:
	FUNC24(space);
	FUNC25(name, 0, 0, kGUARD_EXC_INVALID_VALUE);
	return KERN_INVALID_VALUE;

    guard_failure:
	return KERN_INVALID_RIGHT;
}