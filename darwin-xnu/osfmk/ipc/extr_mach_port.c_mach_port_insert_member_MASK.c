#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_pset_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  scalar_t__ ipc_object_t ;

/* Variables and functions */
 scalar_t__ IO_NULL ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_PORT_SET ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAITQ_DONT_LOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC11(
	ipc_space_t		space,
	mach_port_name_t	name,
	mach_port_name_t	psname)
{
	ipc_object_t obj;
	ipc_object_t psobj;
	kern_return_t kr;
	uint64_t wq_link_id;
	uint64_t wq_reserved_prepost;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (!FUNC0(name) || !FUNC0(psname))
		return KERN_INVALID_RIGHT;

	wq_link_id = FUNC8(NULL);
	wq_reserved_prepost = FUNC10(NULL, 10,
						    WAITQ_DONT_LOCK);
	kr = FUNC6(space, psname);
	if (kr != KERN_SUCCESS)
		goto done;


	kr = FUNC4(space, 
				      name, MACH_PORT_RIGHT_RECEIVE, &obj,
				      psname, MACH_PORT_RIGHT_PORT_SET, &psobj);
	if (kr != KERN_SUCCESS)
		goto done;

	/* obj and psobj are locked (and were locked in that order) */
	FUNC2(psobj != IO_NULL);
	FUNC2(obj != IO_NULL);

	FUNC1(kr = FUNC5((ipc_pset_t)psobj, (ipc_port_t)obj,
					    &wq_link_id, &wq_reserved_prepost));

	FUNC3(psobj);
	FUNC3(obj);

 done:
	/* on success, wq_link_id is reset to 0, so this is always safe */
	FUNC7(wq_link_id);
	FUNC9(wq_reserved_prepost);

	return kr;
}