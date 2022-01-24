#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  TYPE_1__* vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_16__ {scalar_t__ map_aligned; scalar_t__ wired_count; scalar_t__ user_wired_count; scalar_t__ is_sub_map; int /*<<< orphan*/  permanent; scalar_t__ vme_end; scalar_t__ vme_start; } ;
struct TYPE_15__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(
	vm_map_t	map,
	vm_map_entry_t	entry)
{
	vm_map_offset_t	s, e;
	vm_object_t	object;
	vm_map_t	submap;

	s = entry->vme_start;
	e = entry->vme_end;
	FUNC4(FUNC5(s));
	FUNC4(FUNC5(e));
	if (entry->map_aligned == TRUE) {
		FUNC4(FUNC2(s, FUNC3(map)));
		FUNC4(FUNC2(e, FUNC3(map)));
	}
	FUNC4(entry->wired_count == 0);
	FUNC4(entry->user_wired_count == 0);
	FUNC4(!entry->permanent);

	if (entry->is_sub_map) {
		object = NULL;
		submap = FUNC1(entry);
	} else {
		submap = NULL;
		object = FUNC0(entry);
	}

	FUNC8(map, entry);
	map->size -= e - s;

	FUNC7(map, entry);

	FUNC9(map);
	/*
	 *	Deallocate the object only after removing all
	 *	pmap entries pointing to its pages.
	 */
	if (submap)
		FUNC6(submap);
	else
		FUNC10(object);

}