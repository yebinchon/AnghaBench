#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {scalar_t__ vme_start; struct TYPE_6__* vme_next; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_NO_SPACE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int MAX_TRIES_TO_GET_RANDOM_ADDRESS ; 
 scalar_t__ PAGE_SHIFT ; 
 TYPE_1__* VM_MAP_ENTRY_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC10(
	vm_map_t	map,
	vm_map_offset_t	*address,
	vm_map_size_t	size)
{
	kern_return_t	kr = KERN_SUCCESS;
	int		tries = 0;
	vm_map_offset_t	random_addr = 0;
	vm_map_offset_t hole_end;

	vm_map_entry_t	next_entry = VM_MAP_ENTRY_NULL;
	vm_map_entry_t	prev_entry = VM_MAP_ENTRY_NULL;
	vm_map_size_t	vm_hole_size = 0;
	vm_map_size_t	addr_space_size;

	addr_space_size = FUNC6(map) - FUNC7(map);

	FUNC1(FUNC2(size));

	while (tries < MAX_TRIES_TO_GET_RANDOM_ADDRESS) {
		random_addr = ((vm_map_offset_t)FUNC3()) << PAGE_SHIFT;
		random_addr = FUNC9(
			FUNC7(map) +(random_addr % addr_space_size),
			FUNC0(map));

		if (FUNC5(map, random_addr, &prev_entry) == FALSE) {
			if (prev_entry == FUNC8(map)) {
				next_entry = FUNC4(map);
			} else {
				next_entry = prev_entry->vme_next;
			}
			if (next_entry == FUNC8(map)) {
				hole_end = FUNC6(map);
			} else {
				hole_end = next_entry->vme_start;
			}
			vm_hole_size = hole_end - random_addr;
			if (vm_hole_size >= size) {
				*address = random_addr;
				break;
			}
		}
		tries++;
	}

	if (tries == MAX_TRIES_TO_GET_RANDOM_ADDRESS) {
		kr = KERN_NO_SPACE;
	}
	return kr;
}