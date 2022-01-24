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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  IE_NULL ; 
 scalar_t__ IS_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_NAME ; 
 int /*<<< orphan*/  KERN_INVALID_TASK ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

kern_return_t
FUNC5(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		*entryp)
{
	ipc_entry_t entry;

	FUNC0(space != IS_NULL);

	FUNC3(space);

	if (!FUNC2(space)) {
		FUNC4(space);
		return KERN_INVALID_TASK;
	}

	if ((entry = FUNC1(space, name)) == IE_NULL) {
		FUNC4(space);
		return KERN_INVALID_NAME;
	}

	*entryp = entry;
	return KERN_SUCCESS;
}