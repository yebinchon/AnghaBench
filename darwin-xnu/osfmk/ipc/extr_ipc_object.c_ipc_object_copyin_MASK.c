#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  TYPE_1__* ipc_entry_t ;
struct TYPE_7__ {int /*<<< orphan*/  task_imp_base; } ;
struct TYPE_6__ {int /*<<< orphan*/  ie_bits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_PORT_TYPE_NONE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_5__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC10(
	ipc_space_t		space,
	mach_port_name_t	name,
	mach_msg_type_name_t	msgt_name,
	ipc_object_t		*objectp)
{
	ipc_entry_t entry;
	ipc_port_t soright;
	ipc_port_t release_port;
	kern_return_t kr;
	int assertcnt = 0;

	/*
	 *	Could first try a read lock when doing
	 *	MACH_MSG_TYPE_COPY_SEND, MACH_MSG_TYPE_MAKE_SEND,
	 *	and MACH_MSG_TYPE_MAKE_SEND_ONCE.
	 */

	kr = FUNC8(space, name, &entry);
	if (kr != KERN_SUCCESS)
		return kr;
	/* space is write-locked and active */

	release_port = IP_NULL;
	kr = FUNC7(space, name, entry,
			      msgt_name, TRUE,
			      objectp, &soright,
			      &release_port,
			      &assertcnt);
	if (FUNC0(entry->ie_bits) == MACH_PORT_TYPE_NONE)
		FUNC3(space, name, entry);
	FUNC9(space);

#if IMPORTANCE_INHERITANCE
	if (0 < assertcnt && ipc_importance_task_is_any_receiver_type(current_task()->task_imp_base)) {
		ipc_importance_task_drop_internal_assertion(current_task()->task_imp_base, assertcnt);
	}
#endif /* IMPORTANCE_INHERITANCE */

	if (release_port != IP_NULL)
		FUNC2(release_port);

	if ((kr == KERN_SUCCESS) && (soright != IP_NULL))
		FUNC6(soright, name);

	return kr;
}