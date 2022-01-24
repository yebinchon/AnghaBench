#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_9__ {int /*<<< orphan*/ * vme_prev; struct TYPE_9__* vme_next; } ;
struct TYPE_8__ {int /*<<< orphan*/  first_free; scalar_t__ holelistenabled; int /*<<< orphan*/ * holes_list; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  vm_map_holes_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC4(vm_map_t map)
{
	vm_map_entry_t	head_entry, hole_entry, next_hole_entry;

	if (map->holelistenabled) {

		head_entry = hole_entry = FUNC0(map->holes_list);

		while (hole_entry != NULL) {

			next_hole_entry = hole_entry->vme_next;

			hole_entry->vme_next = NULL;
			hole_entry->vme_prev = NULL;
			FUNC3(vm_map_holes_zone, hole_entry);

			if (next_hole_entry == head_entry) {
				hole_entry = NULL;
			} else {
				hole_entry = next_hole_entry;
			}
		}

		map->holes_list = NULL;
		map->holelistenabled = FALSE;

		map->first_free = FUNC2(map);
		FUNC1(map, NULL);
	}
}