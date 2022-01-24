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
typedef  int mach_port_urefs_t ;
typedef  int mach_port_type_t ;
typedef  int mach_port_right_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_entry_t ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_NAME ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_INVALID_VALUE ; 
 scalar_t__ KERN_SUCCESS ; 
#define  MACH_PORT_RIGHT_DEAD_NAME 132 
 int MACH_PORT_RIGHT_NUMBER ; 
#define  MACH_PORT_RIGHT_PORT_SET 131 
#define  MACH_PORT_RIGHT_RECEIVE 130 
#define  MACH_PORT_RIGHT_SEND 129 
#define  MACH_PORT_RIGHT_SEND_ONCE 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_NAME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

kern_return_t
FUNC7(
	ipc_space_t		space,
	mach_port_name_t	name,
	mach_port_right_t	right,
	mach_port_urefs_t	*urefsp)
{
	mach_port_type_t type;
	mach_port_urefs_t urefs;
	ipc_entry_t entry;
	kern_return_t kr;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (right >= MACH_PORT_RIGHT_NUMBER)
		return KERN_INVALID_VALUE;

	if (!FUNC1(name)) {
	  	if (right == MACH_PORT_RIGHT_SEND ||
		    right == MACH_PORT_RIGHT_SEND_ONCE) {
			*urefsp = 1;
			return KERN_SUCCESS;
		}
		return KERN_INVALID_NAME;
	}

	kr = FUNC4(space, name, &entry);
	if (kr != KERN_SUCCESS) {
		FUNC5(name, 0, 0, kGUARD_EXC_INVALID_NAME);
		return kr;
	}

	/* space is write-locked and active */
	kr = FUNC3(space, name, entry, &type, &urefs);
	/* space is unlocked */

	if (kr != KERN_SUCCESS)
		return kr;	

	if (type & FUNC0(right))
		switch (right) {
		    case MACH_PORT_RIGHT_SEND_ONCE:
			FUNC2(urefs == 1);
			/* fall-through */

		    case MACH_PORT_RIGHT_PORT_SET:
		    case MACH_PORT_RIGHT_RECEIVE:
			*urefsp = 1;
			break;

		    case MACH_PORT_RIGHT_DEAD_NAME:
		    case MACH_PORT_RIGHT_SEND:
			FUNC2(urefs > 0);
			*urefsp = urefs;
			break;

		    default:
			FUNC6("mach_port_get_refs: strange rights");
		}
	else
		*urefsp = 0;

	return kr;
}