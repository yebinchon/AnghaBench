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
struct TYPE_6__ {scalar_t__ vme_start; struct TYPE_6__* vme_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__**) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(
	vm_map_t	map,
	vm_map_offset_t	start,
	vm_map_offset_t	end)
{
	vm_map_entry_t	entry;

	/*
	 * The map should be locked (for "write") by the caller.
	 */

	if (start >= end) {
		/* invalid address range */
		return;
	}

	start = FUNC6(start,
				  FUNC0(map));
	end = FUNC3(end,
				FUNC0(map));

	if (!FUNC2(map, start, &entry)) {
		/* "start" is not mapped and "entry" ends before "start" */
		if (entry == FUNC5(map)) {
			/* start with first entry in the map */
			entry = FUNC1(map);
		} else {
			/* start with next entry */
			entry = entry->vme_next;
		}
	}

	while (entry != FUNC5(map) &&
	       entry->vme_start <= end) {
		/* try and coalesce "entry" with its previous entry */
		FUNC4(map, entry);
		entry = entry->vme_next;
	}
}