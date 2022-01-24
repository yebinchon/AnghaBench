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
struct vm_map_links {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_9__ {struct TYPE_9__* vme_prev; struct TYPE_9__* vme_next; } ;
struct TYPE_8__ {struct vm_map_links* holes_list; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct vm_map_links*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct vm_map_links*) ; 
 int /*<<< orphan*/  vm_map_holes_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC3(vm_map_t map, vm_map_entry_t hole_entry)
{
	if (hole_entry == FUNC0(map->holes_list)) {

		if (hole_entry->vme_next == FUNC0(map->holes_list)) {

			map->holes_list = NULL;
			FUNC1(map, NULL);
		} else {

			vm_map_entry_t l_next, l_prev;

			l_next = (vm_map_entry_t) map->holes_list->next;
			l_prev = (vm_map_entry_t) map->holes_list->prev;
			map->holes_list = (struct vm_map_links*) l_next;

			l_next->vme_prev = l_prev;
			l_prev->vme_next = l_next;

			FUNC1(map, (struct vm_map_links*) l_next);
		}
	} else {

		FUNC1(map, (struct vm_map_links*) hole_entry->vme_prev);

		hole_entry->vme_prev->vme_next = hole_entry->vme_next;
		hole_entry->vme_next->vme_prev = hole_entry->vme_prev;
	}

	hole_entry->vme_next = NULL;
	hole_entry->vme_prev = NULL;
	FUNC2(vm_map_holes_zone, hole_entry);
}