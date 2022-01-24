#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_5__ {int /*<<< orphan*/  permanent; void* max_protection; void* protection; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int /*<<< orphan*/  VM_MAP_KERNEL_FLAGS_NONE ; 
 int VM_PAGING_NUM_PAGES ; 
 void* VM_PROT_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  kernel_object ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ vm_paging_base_address ; 

void
FUNC7(void)
{
	kern_return_t	kr;
	vm_map_offset_t	page_map_offset;
	vm_map_entry_t	map_entry;

	FUNC2(vm_paging_base_address == 0);

	/*
	 * Initialize our pool of pre-allocated kernel
	 * virtual addresses.
	 */
	page_map_offset = 0;
	kr = FUNC4(kernel_map,
			       &page_map_offset,
			       VM_PAGING_NUM_PAGES * PAGE_SIZE,
			       0,
			       0,
			       VM_MAP_KERNEL_FLAGS_NONE,
			       VM_KERN_MEMORY_NONE,
			       &map_entry);
	if (kr != KERN_SUCCESS) {
		FUNC3("vm_paging_map_init: kernel_map full\n");
	}
	FUNC0(map_entry, kernel_object);
	FUNC1(map_entry, page_map_offset);
	map_entry->protection = VM_PROT_NONE;
	map_entry->max_protection = VM_PROT_NONE;
	map_entry->permanent = TRUE;
	FUNC6(kernel_object);
	FUNC5(kernel_map);

	FUNC2(vm_paging_base_address == 0);
	vm_paging_base_address = page_map_offset;
}