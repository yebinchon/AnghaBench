#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int mach_port_type_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_port_mscount_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_pset_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  int /*<<< orphan*/  ipc_entry_bits_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_19__ {void* ie_object; int /*<<< orphan*/  ie_request; int /*<<< orphan*/  ie_bits; } ;
struct TYPE_18__ {int /*<<< orphan*/  ip_receiver; int /*<<< orphan*/  ip_sorights; int /*<<< orphan*/  ip_mscount; struct TYPE_18__* ip_nsrequest; int /*<<< orphan*/  ip_srights; int /*<<< orphan*/  ip_context; int /*<<< orphan*/  ip_guarded; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IE_BITS_TYPE_MASK ; 
 int /*<<< orphan*/  IE_REQ_NONE ; 
 void* IO_NULL ; 
 int /*<<< orphan*/  IPS_NULL ; 
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_RIGHT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
#define  MACH_PORT_TYPE_DEAD_NAME 133 
#define  MACH_PORT_TYPE_PORT_SET 132 
#define  MACH_PORT_TYPE_RECEIVE 131 
#define  MACH_PORT_TYPE_SEND 130 
#define  MACH_PORT_TYPE_SEND_ONCE 129 
#define  MACH_PORT_TYPE_SEND_RECEIVE 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kGUARD_EXC_DESTROY ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

kern_return_t
FUNC20(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		entry,
	boolean_t		check_guard,
	uint64_t		guard)
{
	ipc_entry_bits_t bits;
	mach_port_type_t type;

	bits = entry->ie_bits;
	entry->ie_bits &= ~IE_BITS_TYPE_MASK;
	type = FUNC0(bits);

	FUNC1(FUNC16(space));

	switch (type) {
	    case MACH_PORT_TYPE_DEAD_NAME:
		FUNC1(entry->ie_request == IE_REQ_NONE);
		FUNC1(entry->ie_object == IO_NULL);

		FUNC6(space, name, entry);
		FUNC17(space);
		break;

	    case MACH_PORT_TYPE_PORT_SET: {
		ipc_pset_t pset = (ipc_pset_t) entry->ie_object;

		FUNC1(entry->ie_request == IE_REQ_NONE);
		FUNC1(pset != IPS_NULL);

		entry->ie_object = IO_NULL;
		FUNC6(space, name, entry);

		FUNC15(pset);
		FUNC17(space);

		FUNC1(FUNC14(pset));
		FUNC12(pset); /* consumes ref, unlocks */
		break;
	    }

	    case MACH_PORT_TYPE_SEND:
	    case MACH_PORT_TYPE_RECEIVE:
	    case MACH_PORT_TYPE_SEND_RECEIVE:
	    case MACH_PORT_TYPE_SEND_ONCE: {
		ipc_port_t port = (ipc_port_t) entry->ie_object;
		ipc_port_t nsrequest = IP_NULL;
		mach_port_mscount_t mscount = 0;
		ipc_port_t request;

		FUNC1(port != IP_NULL);

		if (type == MACH_PORT_TYPE_SEND)
			FUNC7(space, (ipc_object_t) port,
					name, entry);

		FUNC3(port);

		if (!FUNC2(port)) {
			FUNC1((type & MACH_PORT_TYPE_RECEIVE) == 0);
			FUNC5(port);
			entry->ie_request = IE_REQ_NONE;
			entry->ie_object = IO_NULL;
			FUNC6(space, name, entry);
			FUNC17(space);
			FUNC4(port);
			break;
		}

		/* For receive rights, check for guarding */
		if ((type & MACH_PORT_TYPE_RECEIVE) &&
		    (check_guard) && (port->ip_guarded) &&
		    (guard != port->ip_context)) {
			/* Guard Violation */
			uint64_t portguard = port->ip_context;
			FUNC5(port);
			FUNC17(space);
			/* Raise mach port guard exception */
			FUNC18(name, 0, portguard, kGUARD_EXC_DESTROY);
			return KERN_INVALID_RIGHT;		
		}


		request = FUNC13(space, port, name, entry);

		entry->ie_object = IO_NULL;
		FUNC6(space, name, entry);
		FUNC17(space);

		if (type & MACH_PORT_TYPE_SEND) {
			FUNC1(port->ip_srights > 0);
			if (--port->ip_srights == 0) {
				nsrequest = port->ip_nsrequest;
				if (nsrequest != IP_NULL) {
					port->ip_nsrequest = IP_NULL;
					mscount = port->ip_mscount;
				}
			}
		}

		if (type & MACH_PORT_TYPE_RECEIVE) {
			FUNC1(FUNC2(port));
			FUNC1(port->ip_receiver == space);

			FUNC11(port); /* clears receiver, consumes our ref, unlocks */

		} else if (type & MACH_PORT_TYPE_SEND_ONCE) {
			FUNC1(port->ip_sorights > 0);
			FUNC5(port);

			FUNC10(port); /* consumes our ref */
		} else {
			FUNC1(port->ip_receiver != space);

			FUNC5(port);
			FUNC4(port);
		}

		if (nsrequest != IP_NULL)
			FUNC8(nsrequest, mscount);

		if (request != IP_NULL)
			FUNC9(request, name);


		break;
	    }

	    default:
		FUNC19("ipc_right_destroy: strange type");
	}

	return KERN_SUCCESS;
}