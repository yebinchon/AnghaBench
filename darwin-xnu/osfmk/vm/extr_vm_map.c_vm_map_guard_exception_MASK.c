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
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  mach_exception_data_type_t ;
typedef  int /*<<< orphan*/  mach_exception_code_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int GUARD_TYPE_VIRT_MEMORY ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ kernel_task ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(
	vm_map_offset_t gap_start,
	unsigned reason)
{
	mach_exception_code_t code = 0;
	unsigned int guard_type = GUARD_TYPE_VIRT_MEMORY;
	unsigned int target = 0; /* should we pass in pid associated with map? */
	mach_exception_data_type_t subcode = (uint64_t)gap_start;

	/* Can't deliver exceptions to kernel task */
	if (FUNC3() == kernel_task)
		return;

	FUNC2(code, guard_type);
	FUNC0(code, reason);
	FUNC1(code, target);
	FUNC5(FUNC4(), code, subcode);
}