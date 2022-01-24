#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_18__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
struct knote {int dummy; } ;
typedef  scalar_t__ mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_1__* ipc_space_t ;
typedef  TYPE_2__* ipc_port_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  scalar_t__ ipc_importance_task_t ;
typedef  TYPE_3__* ipc_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_23__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_22__ {int ip_impcount; scalar_t__ ip_tempowner; } ;
struct TYPE_21__ {TYPE_18__* is_task; } ;
struct TYPE_20__ {scalar_t__ task_imp_base; } ;
struct TYPE_19__ {struct knote* ith_knote; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ IIT_NULL ; 
 scalar_t__ IOT_PORT ; 
 scalar_t__ IO_NULL ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct knote*,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_INVALID_CAPABILITY ; 
 scalar_t__ KERN_NAME_EXISTS ; 
 scalar_t__ KERN_RIGHT_EXISTS ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_PORT_RECEIVE ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_PORT_SEND_ONCE ; 
 scalar_t__ MACH_PORT_TYPE_NONE ; 
 int MACH_PORT_TYPE_SEND_RECEIVE ; 
 TYPE_18__* TASK_NULL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_17__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct knote*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (TYPE_1__*,scalar_t__,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (TYPE_1__*,scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*,scalar_t__,scalar_t__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 

kern_return_t
FUNC20(
	ipc_space_t		space,
	ipc_object_t		object,
	mach_msg_type_name_t	msgt_name,
	boolean_t		overflow,
	mach_port_name_t	name)
{
	mach_port_name_t oname;
	ipc_entry_t oentry;
	ipc_entry_t entry;
	kern_return_t kr;
	struct knote *kn = FUNC4()->ith_knote;

#if IMPORTANCE_INHERITANCE
	int assertcnt = 0;
	ipc_importance_task_t task_imp = IIT_NULL;
#endif /* IMPORTANCE_INHERITANCE */

	FUNC3(FUNC1(object));
	FUNC3(FUNC8(object) == IOT_PORT);

	if (FUNC2(kn, msgt_name)) {
		FUNC5(kn,
				msgt_name, (ipc_port_t)object);
	}

	kr = FUNC10(space, name, &entry);
	if (kr != KERN_SUCCESS)
		return kr;
	/* space is write-locked and active */

	if ((msgt_name != MACH_MSG_TYPE_PORT_SEND_ONCE) &&
	    FUNC18(space, object, &oname, &oentry)) {
		/* object is locked and active */

		if (name != oname) {
			FUNC9(object);

			if (FUNC0(entry->ie_bits) == MACH_PORT_TYPE_NONE)
				FUNC11(space, name, entry);

			FUNC19(space);
			return KERN_RIGHT_EXISTS;
		}

		FUNC3(entry == oentry);
		FUNC3(entry->ie_bits & MACH_PORT_TYPE_SEND_RECEIVE);
	} else {
		if (FUNC17(space, name, entry))
			return KERN_NAME_EXISTS;

		FUNC3(FUNC0(entry->ie_bits) == MACH_PORT_TYPE_NONE);
		FUNC3(entry->ie_object == IO_NULL);

		FUNC7(object);
		if (!FUNC6(object)) {
			FUNC9(object);
			FUNC11(space, name, entry);
			FUNC19(space);
			return KERN_INVALID_CAPABILITY;
		}

		entry->ie_object = object;
	}

	/* space is write-locked and active, object is locked and active */

#if IMPORTANCE_INHERITANCE
	/*
	 * We are slamming a receive right into the space, without
	 * first having been enqueued on a port destined there.  So,
	 * we have to arrange to boost the task appropriately if this
	 * port has assertions (and the task wants them).
	 */
	if (msgt_name == MACH_MSG_TYPE_PORT_RECEIVE) {
		ipc_port_t port = (ipc_port_t)object;

		if (space->is_task != TASK_NULL) {
			task_imp = space->is_task->task_imp_base;
			if (ipc_importance_task_is_any_receiver_type(task_imp)) {
				assertcnt = port->ip_impcount;
				ipc_importance_task_reference(task_imp);
			} else {
				task_imp = IIT_NULL;
			}
		}

		/* take port out of limbo */
		assert(port->ip_tempowner != 0);
		port->ip_tempowner = 0;
	}

#endif /* IMPORTANCE_INHERITANCE */

	kr = FUNC16(space, name, entry,
			       msgt_name, overflow, object);

	/* object is unlocked */
	FUNC19(space);

#if IMPORTANCE_INHERITANCE
	/*
	 * Add the assertions to the task that we captured before
	 */
	if (task_imp != IIT_NULL) {
		ipc_importance_task_hold_internal_assertion(task_imp, assertcnt);
		ipc_importance_task_release(task_imp);
	}
#endif /* IMPORTANCE_INHERITANCE */

	return kr;
}