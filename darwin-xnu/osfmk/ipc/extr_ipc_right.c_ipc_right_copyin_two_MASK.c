#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ mach_msg_type_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  TYPE_1__* ipc_entry_t ;
struct TYPE_6__ {int ie_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ KERN_INVALID_CAPABILITY ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_MSG_TYPE_COPY_SEND ; 
 scalar_t__ MACH_MSG_TYPE_MAKE_SEND ; 
 scalar_t__ MACH_MSG_TYPE_MAKE_SEND_ONCE ; 
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ; 
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND_ONCE ; 
 int FUNC1 (scalar_t__) ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 

kern_return_t
FUNC7(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		entry,
	mach_msg_type_name_t	msgt_one,
	mach_msg_type_name_t	msgt_two,
	ipc_object_t		*objectp,
	ipc_port_t		*sorightp,
	ipc_port_t		*releasep)
{
	kern_return_t kr;
	int assertcnt = 0;

	FUNC2(FUNC1(msgt_one));
	FUNC2(FUNC1(msgt_two));
	

	/*
	 * Pre-validate the second disposition is possible all by itself.
	 */
	if (!FUNC5(space, name, entry, msgt_two)) {
		return KERN_INVALID_CAPABILITY;
	}

	/*
	 *	This is a little tedious to make atomic, because
	 *	there are 25 combinations of valid dispositions.
	 *	However, most are easy.
	 */

	/*
	 *	If either is move-sonce, then there must be an error.
	 */
	if (msgt_one == MACH_MSG_TYPE_MOVE_SEND_ONCE ||
	    msgt_two == MACH_MSG_TYPE_MOVE_SEND_ONCE) {
		return KERN_INVALID_RIGHT;
	}

	if ((msgt_one == MACH_MSG_TYPE_MAKE_SEND) ||
	    (msgt_one == MACH_MSG_TYPE_MAKE_SEND_ONCE) ||
	    (msgt_two == MACH_MSG_TYPE_MAKE_SEND) ||
	    (msgt_two == MACH_MSG_TYPE_MAKE_SEND_ONCE)) {
		/*
		 *	One of the dispositions needs a receive right.
		 *
		 *	If the copyin below succeeds, we know the receive
		 *	right is there (because the pre-validation of
		 *	the second disposition already succeeded in our
		 *	caller).
		 *
		 *	Hence the port is not in danger of dying.
		 */
		ipc_object_t object_two;

		kr = FUNC4(space, name, entry,
				      msgt_one, FALSE,
				      objectp, sorightp, releasep,
				      &assertcnt);
		FUNC2(assertcnt == 0);
		if (kr != KERN_SUCCESS) {
			return kr;
		}

		FUNC2(FUNC0(*objectp));
		FUNC2(*sorightp == IP_NULL);
		FUNC2(*releasep == IP_NULL);

		/*
		 *	Now copyin the second (previously validated)
		 *	disposition.  The result can't be a dead port,
		 *	as no valid disposition can make us lose our
		 *	receive right.
		 */
		kr = FUNC4(space, name, entry,
				      msgt_two, FALSE,
				      &object_two, sorightp, releasep,
				      &assertcnt);
		FUNC2(assertcnt == 0);
		FUNC2(kr == KERN_SUCCESS);
		FUNC2(*sorightp == IP_NULL);
		FUNC2(*releasep == IP_NULL);
		FUNC2(object_two == *objectp);
		FUNC2(entry->ie_bits & MACH_PORT_TYPE_RECEIVE);

	} else if ((msgt_one == MACH_MSG_TYPE_MOVE_SEND) &&
		   (msgt_two == MACH_MSG_TYPE_MOVE_SEND)) {
		/*
		 *	This is an easy case.  Just use our
		 *	handy-dandy special-purpose copyin call
		 *	to get two send rights for the price of one.
		 */
		kr = FUNC6(space, name, entry,
						     objectp, sorightp, 
						     releasep);
		if (kr != KERN_SUCCESS) {
			return kr;
		}

	} else {
		mach_msg_type_name_t msgt_name;

		/*
		 *	Must be either a single move-send and a
		 *	copy-send, or two copy-send dispositions.
		 *	Use the disposition with the greatest side
		 *	effects for the actual copyin - then just
		 *	duplicate the send right you get back.
		 */
		if (msgt_one == MACH_MSG_TYPE_MOVE_SEND ||
		    msgt_two == MACH_MSG_TYPE_MOVE_SEND) {
			msgt_name = MACH_MSG_TYPE_MOVE_SEND;
		} else {
			msgt_name = MACH_MSG_TYPE_COPY_SEND;
		}

		kr = FUNC4(space, name, entry,
				      msgt_name, FALSE,
				      objectp, sorightp, releasep,
				      &assertcnt);
		FUNC2(assertcnt == 0);
		if (kr != KERN_SUCCESS) {
			return kr;
		}

		/*
		 *	Copy the right we got back.  If it is dead now,
		 *	that's OK.  Neither right will be usable to send
		 *	a message anyway.
		 */
		(void)FUNC3((ipc_port_t)*objectp);
	}

	return KERN_SUCCESS;
}