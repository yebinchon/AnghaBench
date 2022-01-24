#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int mach_msg_type_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  int ipc_entry_bits_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_21__ {int ie_bits; scalar_t__ ie_object; scalar_t__ ie_request; } ;
struct TYPE_20__ {int ip_tempowner; int ip_impcount; int /*<<< orphan*/  ip_sorights; int /*<<< orphan*/  ip_srights; int /*<<< orphan*/  ip_receiver; int /*<<< orphan*/  ip_receiver_name; int /*<<< orphan*/  ip_imp_task; int /*<<< orphan*/  ip_messages; struct TYPE_20__* ip_destination; int /*<<< orphan*/  ip_mscount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int IE_BITS_UREFS_MASK ; 
 scalar_t__ IE_REQ_NONE ; 
 int /*<<< orphan*/  IIT_NULL ; 
 int /*<<< orphan*/  IKOT_NONE ; 
 int /*<<< orphan*/  IO_DEAD ; 
 void* IO_NULL ; 
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_CAPABILITY ; 
 int /*<<< orphan*/  KERN_INVALID_RIGHT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
#define  MACH_MSG_TYPE_COPY_SEND 133 
#define  MACH_MSG_TYPE_MAKE_SEND 132 
#define  MACH_MSG_TYPE_MAKE_SEND_ONCE 131 
#define  MACH_MSG_TYPE_MOVE_RECEIVE 130 
#define  MACH_MSG_TYPE_MOVE_SEND 129 
#define  MACH_MSG_TYPE_MOVE_SEND_ONCE 128 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int MACH_PORT_TYPE_DEAD_NAME ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 int MACH_PORT_TYPE_SEND ; 
 int MACH_PORT_TYPE_SEND_ONCE ; 
 int MACH_PORT_TYPE_SEND_RECEIVE ; 
 int MACH_PORT_TYPE_SEND_RIGHTS ; 
 int MACH_PORT_UREFS_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC17(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		entry,
	mach_msg_type_name_t	msgt_name,
	boolean_t		deadok,
	ipc_object_t		*objectp,
	ipc_port_t		*sorightp,
	ipc_port_t		*releasep,
	int			*assertcntp)
{
	ipc_entry_bits_t bits;
	ipc_port_t port;

	*releasep = IP_NULL;
	*assertcntp = 0;

	bits = entry->ie_bits;

	FUNC2(FUNC16(space));

	switch (msgt_name) {
	    case MACH_MSG_TYPE_MAKE_SEND: {

		if ((bits & MACH_PORT_TYPE_RECEIVE) == 0)
			goto invalid_right;

		port = (ipc_port_t) entry->ie_object;
		FUNC2(port != IP_NULL);

		FUNC7(port);
		FUNC2(FUNC6(port));
		FUNC2(port->ip_receiver_name == name);
		FUNC2(port->ip_receiver == space);

		port->ip_mscount++;
		port->ip_srights++;
		FUNC8(port);
		FUNC9(port);

		*objectp = (ipc_object_t) port;
		*sorightp = IP_NULL;
		break;
	    }

	    case MACH_MSG_TYPE_MAKE_SEND_ONCE: {

		if ((bits & MACH_PORT_TYPE_RECEIVE) == 0)
			goto invalid_right;

		port = (ipc_port_t) entry->ie_object;
		FUNC2(port != IP_NULL);

		FUNC7(port);
		FUNC2(FUNC6(port));
		FUNC2(port->ip_receiver_name == name);
		FUNC2(port->ip_receiver == space);

		port->ip_sorights++;
		FUNC8(port);
		FUNC9(port);

		*objectp = (ipc_object_t) port;
		*sorightp = IP_NULL;
		break;
	    }

	    case MACH_MSG_TYPE_MOVE_RECEIVE: {
		ipc_port_t request = IP_NULL;

		if ((bits & MACH_PORT_TYPE_RECEIVE) == 0)
			goto invalid_right;

		/*
		 * Disallow moving receive-right kobjects, e.g. mk_timer ports
		 * The ipc_port structure uses the kdata union of kobject and
		 * imp_task exclusively. Thus, general use of a kobject port as
		 * a receive right can cause type confusion in the importance
		 * code.
		 */
		if (FUNC5(entry->ie_object) != IKOT_NONE) {
			/*
			 * Distinguish an invalid right, e.g., trying to move
			 * a send right as a receive right, from this
			 * situation which is, "This is a valid receive right,
			 * but it's also a kobject and you can't move it."
			 */
			return KERN_INVALID_CAPABILITY;
		}

		port = (ipc_port_t) entry->ie_object;
		FUNC2(port != IP_NULL);

		FUNC7(port);
		FUNC2(FUNC6(port));
		FUNC2(port->ip_receiver_name == name);
		FUNC2(port->ip_receiver == space);

		if (bits & MACH_PORT_TYPE_SEND) {
			FUNC2(FUNC0(bits) ==
					MACH_PORT_TYPE_SEND_RECEIVE);
			FUNC2(FUNC1(bits) > 0);
			FUNC2(port->ip_srights > 0);

			FUNC12(space, (ipc_object_t) port,
					name, entry);
			FUNC8(port);
		} else {
			FUNC2(FUNC0(bits) == MACH_PORT_TYPE_RECEIVE);
			FUNC2(FUNC1(bits) == 0);

			request = FUNC15(space, port,
							     name, entry);
			entry->ie_object = IO_NULL;
		}
		entry->ie_bits = bits &~ MACH_PORT_TYPE_RECEIVE;
		FUNC10(space, name, entry);

		(void)FUNC13(port, FALSE); /* don't destroy the port/mqueue */
		FUNC3(&port->ip_messages);
		port->ip_receiver_name = MACH_PORT_NULL;
		port->ip_destination = IP_NULL;
		FUNC4(&port->ip_messages);

#if IMPORTANCE_INHERITANCE
		/*
		 * Account for boosts the current task is going to lose when
		 * copying this right in.  Tempowner ports have either not
		 * been accounting to any task (and therefore are already in
		 * "limbo" state w.r.t. assertions) or to some other specific
		 * task. As we have no way to drop the latter task's assertions
		 * here, We'll deduct those when we enqueue it on its
		 * destination port (see ipc_port_check_circularity()).
		 */
		if (port->ip_tempowner == 0) {
			assert(IIT_NULL == port->ip_imp_task);

			/* ports in limbo have to be tempowner */
			port->ip_tempowner = 1;
			*assertcntp = port->ip_impcount;
		}
#endif /* IMPORTANCE_INHERITANCE */

		FUNC9(port);

		*objectp = (ipc_object_t) port;
		*sorightp = request;
		break;
	    }

	    case MACH_MSG_TYPE_COPY_SEND: {

		if (bits & MACH_PORT_TYPE_DEAD_NAME)
			goto copy_dead;

		/* allow for dead send-once rights */

		if ((bits & MACH_PORT_TYPE_SEND_RIGHTS) == 0)
			goto invalid_right;

		FUNC2(FUNC1(bits) > 0);

		port = (ipc_port_t) entry->ie_object;
		FUNC2(port != IP_NULL);

		if (FUNC14(space, port, name, entry)) {
			bits = entry->ie_bits;
			*releasep = port;
			goto copy_dead;
		}
		/* port is locked and active */

		if ((bits & MACH_PORT_TYPE_SEND) == 0) {
			FUNC2(FUNC0(bits) == MACH_PORT_TYPE_SEND_ONCE);
			FUNC2(port->ip_sorights > 0);

			FUNC9(port);
			goto invalid_right;
		}

		FUNC2(port->ip_srights > 0);

		port->ip_srights++;
		FUNC8(port);
		FUNC9(port);

		*objectp = (ipc_object_t) port;
		*sorightp = IP_NULL;
		break;
	    }

	    case MACH_MSG_TYPE_MOVE_SEND: {
		ipc_port_t request = IP_NULL;

		if (bits & MACH_PORT_TYPE_DEAD_NAME)
			goto move_dead;

		/* allow for dead send-once rights */

		if ((bits & MACH_PORT_TYPE_SEND_RIGHTS) == 0)
			goto invalid_right;

		FUNC2(FUNC1(bits) > 0);

		port = (ipc_port_t) entry->ie_object;
		FUNC2(port != IP_NULL);

		if (FUNC14(space, port, name, entry)) {
			bits = entry->ie_bits;
			*releasep = port;
			goto move_dead;
		}
		/* port is locked and active */

		if ((bits & MACH_PORT_TYPE_SEND) == 0) {
			FUNC2(FUNC0(bits) == MACH_PORT_TYPE_SEND_ONCE);
			FUNC2(port->ip_sorights > 0);

			FUNC9(port);
			goto invalid_right;
		}

		FUNC2(port->ip_srights > 0);

		if (FUNC1(bits) == 1) {
			if (bits & MACH_PORT_TYPE_RECEIVE) {
				FUNC2(port->ip_receiver_name == name);
				FUNC2(port->ip_receiver == space);
				FUNC2(FUNC0(bits) ==
						MACH_PORT_TYPE_SEND_RECEIVE);

				FUNC8(port);
			} else {
				FUNC2(FUNC0(bits) ==
						MACH_PORT_TYPE_SEND);

				request = FUNC15(space, port,
								     name, entry);
				FUNC11(space, (ipc_object_t) port,
						name, entry);
				entry->ie_object = IO_NULL;
				/* transfer entry's reference to caller */
			}
			entry->ie_bits = bits &~
				(IE_BITS_UREFS_MASK|MACH_PORT_TYPE_SEND);
		} else {
			port->ip_srights++;
			FUNC8(port);
			/* if urefs are pegged due to overflow, leave them pegged */
			if (FUNC1(bits) < MACH_PORT_UREFS_MAX)
				entry->ie_bits = bits-1; /* decrement urefs */
		}

		FUNC10(space, name, entry);
		FUNC9(port);

		*objectp = (ipc_object_t) port;
		*sorightp = request;
		break;
	    }

	    case MACH_MSG_TYPE_MOVE_SEND_ONCE: {
		ipc_port_t request;

		if (bits & MACH_PORT_TYPE_DEAD_NAME)
			goto move_dead;

		/* allow for dead send rights */

		if ((bits & MACH_PORT_TYPE_SEND_RIGHTS) == 0)
			goto invalid_right;

		FUNC2(FUNC1(bits) > 0);

		port = (ipc_port_t) entry->ie_object;
		FUNC2(port != IP_NULL);

		if (FUNC14(space, port, name, entry)) {
			bits = entry->ie_bits;
			*releasep = port;
			goto move_dead;
		}
		/* port is locked and active */

		if ((bits & MACH_PORT_TYPE_SEND_ONCE) == 0) {
			FUNC2(bits & MACH_PORT_TYPE_SEND);
			FUNC2(port->ip_srights > 0);

			FUNC9(port);
			goto invalid_right;
		}

		FUNC2(FUNC0(bits) == MACH_PORT_TYPE_SEND_ONCE);
		FUNC2(FUNC1(bits) == 1);
		FUNC2(port->ip_sorights > 0);

		request = FUNC15(space, port, name, entry);
		FUNC9(port);

		entry->ie_object = IO_NULL;
		entry->ie_bits = bits &~
			(IE_BITS_UREFS_MASK | MACH_PORT_TYPE_SEND_ONCE);
		FUNC10(space, name, entry);
		*objectp = (ipc_object_t) port;
		*sorightp = request;
		break;
	    }

	    default:
	    invalid_right:
		return KERN_INVALID_RIGHT;
	}

	return KERN_SUCCESS;

    copy_dead:
	FUNC2(FUNC0(bits) == MACH_PORT_TYPE_DEAD_NAME);
	FUNC2(FUNC1(bits) > 0);
	FUNC2(entry->ie_request == IE_REQ_NONE);
	FUNC2(entry->ie_object == 0);

	if (!deadok)
		goto invalid_right;

	*objectp = IO_DEAD;
	*sorightp = IP_NULL;
	return KERN_SUCCESS;

    move_dead:
	FUNC2(FUNC0(bits) == MACH_PORT_TYPE_DEAD_NAME);
	FUNC2(FUNC1(bits) > 0);
	FUNC2(entry->ie_request == IE_REQ_NONE);
	FUNC2(entry->ie_object == 0);

	if (!deadok)
		goto invalid_right;

	if (FUNC1(bits) == 1) {
		bits &= ~MACH_PORT_TYPE_DEAD_NAME;
	}
	/* if urefs are pegged due to overflow, leave them pegged */
	if (FUNC1(bits) < MACH_PORT_UREFS_MAX)
		entry->ie_bits = bits-1; /* decrement urefs */

	FUNC10(space, name, entry);
	*objectp = IO_DEAD;
	*sorightp = IP_NULL;
	return KERN_SUCCESS;

}