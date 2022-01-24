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
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
typedef  scalar_t__ vm_inherit_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {scalar_t__ vme_start; struct TYPE_6__* vme_next; scalar_t__ inheritance; int /*<<< orphan*/  use_pmap; scalar_t__ is_sub_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ VM_INHERIT_COPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__**) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC8(
	vm_map_t	map,
	vm_map_offset_t	start,
	vm_map_offset_t	end,
	vm_inherit_t	new_inheritance)
{
	vm_map_entry_t	entry;
	vm_map_entry_t	temp_entry;

	FUNC4(map);

	FUNC0(map, start, end);

	if (FUNC5(map, start, &temp_entry)) {
		entry = temp_entry;
	}
	else {
		temp_entry = temp_entry->vme_next;
		entry = temp_entry;
	}

	/* first check entire range for submaps which can't support the */
	/* given inheritance. */
	while ((entry != FUNC6(map)) && (entry->vme_start < end)) {
		if(entry->is_sub_map) {
			if(new_inheritance == VM_INHERIT_COPY) {
				FUNC7(map);
				return(KERN_INVALID_ARGUMENT);
			}
		}

		entry = entry->vme_next;
	}

	entry = temp_entry;
	if (entry != FUNC6(map)) {
		/* clip and unnest if necessary */
		FUNC3(map, entry, start);
	}

	while ((entry != FUNC6(map)) && (entry->vme_start < end)) {
		FUNC2(map, entry, end);
		if (entry->is_sub_map) {
			/* clip did unnest if needed */
			FUNC1(!entry->use_pmap);
		}

		entry->inheritance = new_inheritance;

		entry = entry->vme_next;
	}

	FUNC7(map);
	return(KERN_SUCCESS);
}