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
typedef  int mach_port_type_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_port_mscount_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_pset_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  int /*<<< orphan*/  ipc_entry_bits_t ;
struct TYPE_17__ {int /*<<< orphan*/  ie_object; int /*<<< orphan*/  ie_request; int /*<<< orphan*/  ie_bits; } ;
struct TYPE_16__ {int /*<<< orphan*/  ip_receiver; int /*<<< orphan*/  ip_sorights; int /*<<< orphan*/  ip_receiver_name; int /*<<< orphan*/  ip_mscount; struct TYPE_16__* ip_nsrequest; int /*<<< orphan*/  ip_srights; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IE_REQ_NONE ; 
 int /*<<< orphan*/  IO_NULL ; 
 int /*<<< orphan*/  IPS_NULL ; 
 TYPE_1__* IP_NULL ; 
#define  MACH_PORT_TYPE_DEAD_NAME 133 
#define  MACH_PORT_TYPE_PORT_SET 132 
#define  MACH_PORT_TYPE_RECEIVE 131 
#define  MACH_PORT_TYPE_SEND 130 
#define  MACH_PORT_TYPE_SEND_ONCE 129 
#define  MACH_PORT_TYPE_SEND_RECEIVE 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

void
FUNC16(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		entry)
{
	ipc_entry_bits_t bits;
	mach_port_type_t type;

	bits = entry->ie_bits;
	type = FUNC0(bits);

	FUNC1(!FUNC14(space));

	/*
	 *	IE_BITS_COMPAT/ipc_right_dncancel doesn't have this
	 *	problem, because we check that the port is active.  If
	 *	we didn't cancel IE_BITS_COMPAT, ipc_port_destroy
	 *	would still work, but dead space refs would accumulate
	 *	in ip_dnrequests.  They would use up slots in
	 *	ip_dnrequests and keep the spaces from being freed.
	 */

	switch (type) {
	    case MACH_PORT_TYPE_DEAD_NAME:
		FUNC1(entry->ie_request == IE_REQ_NONE);
		FUNC1(entry->ie_object == IO_NULL);
		break;

	    case MACH_PORT_TYPE_PORT_SET: {
		ipc_pset_t pset = (ipc_pset_t) entry->ie_object;

		FUNC1(entry->ie_request == IE_REQ_NONE);
		FUNC1(pset != IPS_NULL);

		FUNC13(pset);
		FUNC1(FUNC12(pset));
		FUNC10(pset); /* consumes ref, unlocks */
		break;
	    }

	    case MACH_PORT_TYPE_SEND:
	    case MACH_PORT_TYPE_RECEIVE:
	    case MACH_PORT_TYPE_SEND_RECEIVE:
	    case MACH_PORT_TYPE_SEND_ONCE: {
		ipc_port_t port = (ipc_port_t) entry->ie_object;
		ipc_port_t request;
		ipc_port_t nsrequest = IP_NULL;
		mach_port_mscount_t mscount = 0;

		FUNC1(port != IP_NULL);
		FUNC3(port);

		if (!FUNC2(port)) {
			FUNC5(port);
			FUNC4(port);
			break;
		}

		request = FUNC11(space, port, 
					name, entry);

		if (type & MACH_PORT_TYPE_SEND) {
			FUNC1(port->ip_srights > 0);
			if (--port->ip_srights == 0
			    ) {
				nsrequest = port->ip_nsrequest;
				if (nsrequest != IP_NULL) {
					port->ip_nsrequest = IP_NULL;
					mscount = port->ip_mscount;
				}
			}
		}

		if (type & MACH_PORT_TYPE_RECEIVE) {
			FUNC1(port->ip_receiver_name == name);
			FUNC1(port->ip_receiver == space);

			FUNC9(port); /* clears receiver, consumes our ref, unlocks */

		} else if (type & MACH_PORT_TYPE_SEND_ONCE) {
			FUNC1(port->ip_sorights > 0);
			FUNC5(port);

			FUNC8(port); /* consumes our ref */
		} else {
			FUNC1(port->ip_receiver != space);

			FUNC5(port);
			FUNC4(port);			
		}

		if (nsrequest != IP_NULL)
			FUNC6(nsrequest, mscount);

		if (request != IP_NULL)
			FUNC7(request, name);
		break;
	    }

	    default:
		FUNC15("ipc_right_terminate: strange type - 0x%x", type);
	}
}