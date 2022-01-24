#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_right_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  TYPE_1__* ipc_entry_t ;
struct TYPE_3__ {int ie_bits; scalar_t__ ie_object; } ;

/* Variables and functions */
 scalar_t__ IO_NULL ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MACH_PORT_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(
	ipc_space_t		space,
	mach_port_name_t	name,
	mach_port_right_t	right,
	ipc_object_t		*objectp)
{
	ipc_entry_t entry;
	ipc_object_t object;
	kern_return_t kr;

	kr = FUNC3(space, name, &entry);
	if (kr != KERN_SUCCESS)
		return kr;
	/* space is read-locked and active */

	if ((entry->ie_bits & FUNC0(right)) == MACH_PORT_TYPE_NONE) {
		FUNC4(space);
		return KERN_INVALID_RIGHT;
	}

	object = entry->ie_object;
	FUNC1(object != IO_NULL);

	FUNC2(object);
	FUNC4(space);

	*objectp = object;
	return KERN_SUCCESS;
}