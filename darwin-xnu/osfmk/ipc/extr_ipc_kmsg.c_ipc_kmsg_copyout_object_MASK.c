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
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  int /*<<< orphan*/  mach_msg_return_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_INVALID_CAPABILITY ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_IPC_KERNEL ; 
 int /*<<< orphan*/  MACH_MSG_IPC_SPACE ; 
 int /*<<< orphan*/  MACH_MSG_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_DEAD ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mach_msg_return_t
FUNC4(
	ipc_space_t		space,
	ipc_object_t		object,
	mach_msg_type_name_t	msgt_name,
	mach_port_name_t	*namep)
{
	kern_return_t kr;

	if (!FUNC1(object)) {
		*namep = FUNC0(object);
		return MACH_MSG_SUCCESS;
	}

	kr = FUNC2(space, object, msgt_name, TRUE, namep);
	if (kr != KERN_SUCCESS) {
		FUNC3(object, msgt_name);

		if (kr == KERN_INVALID_CAPABILITY)
			*namep = MACH_PORT_DEAD;
		else {
			*namep = MACH_PORT_NULL;

			if (kr == KERN_RESOURCE_SHORTAGE)
				return MACH_MSG_IPC_KERNEL;
			else
				return MACH_MSG_IPC_SPACE;
		}
	}

	return MACH_MSG_SUCCESS;
}