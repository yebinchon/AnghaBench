#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_2__* vm_map_entry_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  vme_start; } ;
struct TYPE_10__ {scalar_t__ max_offset; scalar_t__ holelistenabled; } ;

/* Variables and functions */
 scalar_t__ MACH_VM_MAX_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(vm_map_t map, vm_map_entry_t entry, boolean_t new_entry_creation)
{

	if (map->holelistenabled) {

		/*
		 * Holes can be used to track ranges all the way up to MACH_VM_MAX_ADDRESS or more (e.g. kernel map).
		 */
		vm_map_offset_t max_valid_offset = (map->max_offset > MACH_VM_MAX_ADDRESS) ? map->max_offset : MACH_VM_MAX_ADDRESS;

		/*
		 * Clipping an entry will not result in the creation/deletion/modification of
		 * a hole. Those calls pass NULL for their target entry.
		 */
		if (entry == NULL) {
			return;
		}

		/*
		 * Commpage is pinned beyond the map's max offset. That shouldn't affect the
		 * holes within the bounds of the map.
		 */
		if (FUNC3(entry->vme_start, FUNC0(map)) >= max_valid_offset) {
			return;
		}

		/*
		 *
		 * Note:
		 *
		 * - A new entry has already been added to the map
		 * OR
		 * - An older entry has already been deleted from the map
		 *
		 * We are updating the hole list after the fact (except in one special case involving copy maps).
		 *
		 */

		if (new_entry_creation) {

			FUNC1(map, entry);
		} else {

			FUNC2(map, entry);
		}
	}
}