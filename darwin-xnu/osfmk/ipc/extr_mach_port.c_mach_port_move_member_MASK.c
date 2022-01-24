#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  scalar_t__ ipc_pset_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  TYPE_1__* ipc_entry_t ;
struct TYPE_5__ {int ie_bits; scalar_t__ ie_object; } ;

/* Variables and functions */
 TYPE_1__* IE_NULL ; 
 scalar_t__ IPS_NULL ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_NAME ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_DEAD ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int MACH_PORT_TYPE_PORT_SET ; 
 int MACH_PORT_TYPE_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAITQ_DONT_LOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC18(
	ipc_space_t		space,
	mach_port_name_t	member,
	mach_port_name_t	after)
{
	ipc_entry_t entry;
	ipc_port_t port;
	ipc_pset_t nset;
	kern_return_t kr;
	uint64_t wq_link_id = 0;
	uint64_t wq_reserved_prepost = 0;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (!FUNC0(member))
		return KERN_INVALID_RIGHT;

	if (after == MACH_PORT_DEAD) {
		return KERN_INVALID_RIGHT;
	} else if (after == MACH_PORT_NULL) {
		wq_link_id = 0;
	} else {
		/*
		 * We reserve both a link, and
		 * enough prepost objects to complete
		 * the set move atomically - we can't block
		 * while we're holding the space lock, and
		 * the ipc_pset_add calls ipc_mqueue_add
		 * which may have to prepost this port onto
		 * this set.
		 */
		wq_link_id = FUNC15(NULL);
		wq_reserved_prepost = FUNC17(NULL, 10,
		                                            WAITQ_DONT_LOCK);
		kr = FUNC8(space, after);
		if (kr != KERN_SUCCESS)
			goto done;
	}

	kr = FUNC10(space, member, &entry);
	if (kr != KERN_SUCCESS)
		goto done;
	/* space is read-locked and active */

	if ((entry->ie_bits & MACH_PORT_TYPE_RECEIVE) == 0) {
		FUNC13(space);
		kr = KERN_INVALID_RIGHT;
		goto done;
	}

	FUNC1(port = (ipc_port_t) entry->ie_object);
	FUNC2(port != IP_NULL);

	if (after == MACH_PORT_NULL)
		nset = IPS_NULL;
	else {
		entry = FUNC6(space, after);
		if (entry == IE_NULL) {
			FUNC13(space);
			kr = KERN_INVALID_NAME;
			goto done;
		}

		if ((entry->ie_bits & MACH_PORT_TYPE_PORT_SET) == 0) {
			FUNC13(space);
			kr = KERN_INVALID_RIGHT;
			goto done;
		}

		FUNC1(nset = (ipc_pset_t) entry->ie_object);
		FUNC2(nset != IPS_NULL);
	}
	FUNC4(port);
	FUNC2(FUNC3(port));
	FUNC9(port);

	if (nset != IPS_NULL) {
		FUNC11(nset);
		kr = FUNC7(nset, port, &wq_link_id, &wq_reserved_prepost);
		FUNC12(nset);
	}
	FUNC5(port);
	FUNC13(space);

 done:

	/*
	 * on success the ipc_pset_add() will consume the wq_link_id
	 * value (resetting it to 0), so this function is always safe to call.
	 */
	FUNC14(wq_link_id);
	FUNC16(wq_reserved_prepost);

	return kr;
}