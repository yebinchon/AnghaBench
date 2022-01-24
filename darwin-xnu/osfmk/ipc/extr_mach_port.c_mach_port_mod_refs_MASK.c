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
typedef  int /*<<< orphan*/  mach_port_right_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_port_delta_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_entry_t ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_NAME ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_INVALID_VALUE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_NUMBER ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_SEND ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_SEND_ONCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(
	ipc_space_t		space,
	mach_port_name_t	name,
	mach_port_right_t	right,
	mach_port_delta_t	delta)
{
	ipc_entry_t entry;
	kern_return_t kr;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (right >= MACH_PORT_RIGHT_NUMBER)
		return KERN_INVALID_VALUE;

	if (!FUNC0(name)) {
		if (right == MACH_PORT_RIGHT_SEND ||
		    right == MACH_PORT_RIGHT_SEND_ONCE)
			return KERN_SUCCESS;
		return KERN_INVALID_NAME;
	}

	kr = FUNC2(space, name, &entry);
	if (kr != KERN_SUCCESS) {
		FUNC3(name, 0, 0, kGUARD_EXC_INVALID_NAME);
		return kr;
	}

	/* space is write-locked and active */

	kr = FUNC1(space, name, entry, right, delta);	/* unlocks */
	return kr;
}