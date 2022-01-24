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
typedef  TYPE_2__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_11__ {struct TYPE_11__* vme_next; int /*<<< orphan*/  vme_start; int /*<<< orphan*/  vme_end; } ;
struct TYPE_10__ {TYPE_2__* first_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

boolean_t
FUNC4( vm_map_t map )
{
	vm_map_entry_t	entry, next;
	entry = FUNC2(map);
	next = entry->vme_next;
	while (FUNC3(next->vme_start,
				 FUNC0(map)) ==
	       FUNC3(entry->vme_end,
				 FUNC0(map)) ||
	       (FUNC3(next->vme_start,
				  FUNC0(map)) ==
		FUNC3(entry->vme_start,
				  FUNC0(map)) &&
		next != FUNC2(map))) {
		entry = next;
		next = entry->vme_next;
		if (entry == FUNC2(map))
			break;
	}
	if (map->first_free != entry) {
		FUNC1("Bad first_free for map %p: %p should be %p\n",
		       map, map->first_free, entry);
		return FALSE;
	}
	return TRUE;
}