#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_named_entry_t ;
typedef  scalar_t__ vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
struct TYPE_4__ {scalar_t__ map; } ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  protection; scalar_t__ offset; void* is_sub_map; void* internal; TYPE_1__ backing; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 scalar_t__ FUNC2 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 

__attribute__((used)) static void
FUNC6(
	ipc_port_t	*handlep,
	vm_map_size_t	size)
{
	kern_return_t		kr;
	vm_named_entry_t	mem_entry;
	vm_map_t		new_map;

	FUNC0(
		("commpage: -> _init(0x%llx)\n",
		 (long long)size));

	kr = FUNC2(&mem_entry,
					handlep);
	if (kr != KERN_SUCCESS) {
		FUNC3("_vm_commpage_init: could not allocate mem_entry");
	}
	new_map = FUNC5(FUNC4(NULL, 0, 0), 0, size, TRUE);
	if (new_map == VM_MAP_NULL) {
		FUNC3("_vm_commpage_init: could not allocate VM map");
	}
	mem_entry->backing.map = new_map;
	mem_entry->internal = TRUE;
	mem_entry->is_sub_map = TRUE;
	mem_entry->offset = 0;
	mem_entry->protection = VM_PROT_ALL;
	mem_entry->size = size;

	FUNC0(
		("commpage: _init(0x%llx) <- %p\n",
		 (long long)size, (void *)FUNC1(*handlep)));
}