#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_offset_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_7__ {int /*<<< orphan*/  map; int /*<<< orphan*/  corpse_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORPSEINFO_ALLOCATION_SIZE ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_1__* TASK_NULL ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_MEMORY_CORPSEINFO ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

kern_return_t
FUNC5(
	task_t task,
	task_t corpse_task,
	mach_vm_address_t *kcd_addr_begin,
	mach_vm_size_t *kcd_size)
{
	kern_return_t kr;
	mach_vm_offset_t crash_data_ptr = 0;
	mach_vm_size_t size = CORPSEINFO_ALLOCATION_SIZE;
	void *corpse_info_kernel = NULL;

	if (task == TASK_NULL || FUNC4(task)) {
		return KERN_INVALID_ARGUMENT;
	}

	if (corpse_task == TASK_NULL || !FUNC3(corpse_task) ||
	    FUNC1(corpse_task->corpse_info) == NULL) {
		return KERN_INVALID_ARGUMENT;
	}
	corpse_info_kernel = FUNC1(corpse_task->corpse_info);
	kr = FUNC2(task->map, &crash_data_ptr, size,
			VM_FLAGS_ANYWHERE, VM_MEMORY_CORPSEINFO);
	if (kr != KERN_SUCCESS) {
		return kr;
	}
	FUNC0(corpse_info_kernel, crash_data_ptr, size);
	*kcd_addr_begin = crash_data_ptr;
	*kcd_size = size;

	return KERN_SUCCESS;
}