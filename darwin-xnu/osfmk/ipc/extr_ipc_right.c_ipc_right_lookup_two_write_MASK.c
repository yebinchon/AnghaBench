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
 int /*<<< orphan*/  kGUARD_EXC_INVALID_NAME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC6(
	ipc_space_t		space,
	mach_port_name_t	name1,
	ipc_entry_t		*entryp1,
	mach_port_name_t	name2,
	ipc_entry_t		*entryp2)
{
	ipc_entry_t entry1;
	ipc_entry_t entry2;

	FUNC0(space != IS_NULL);

	FUNC3(space);

	if (!FUNC2(space)) {
		FUNC4(space);
		return KERN_INVALID_TASK;
	}

	if ((entry1 = FUNC1(space, name1)) == IE_NULL) {
		FUNC4(space);
		FUNC5(name1, 0, 0, kGUARD_EXC_INVALID_NAME);
		return KERN_INVALID_NAME;
	}
	if ((entry2 = FUNC1(space, name2)) == IE_NULL) {
		FUNC4(space);
		FUNC5(name2, 0, 0, kGUARD_EXC_INVALID_NAME);
		return KERN_INVALID_NAME;
	}
	*entryp1 = entry1;
	*entryp2 = entry2;
	return KERN_SUCCESS;
}