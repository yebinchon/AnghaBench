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
typedef  TYPE_1__* vm_map_t ;
struct TYPE_6__ {unsigned int map_refcnt; int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 TYPE_1__* VM_MAP_NULL ; 
 int /*<<< orphan*/  VM_MAP_REMOVE_NO_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(
	vm_map_t	map)
{
	unsigned int		ref;

	if (map == VM_MAP_NULL)
		return;

	FUNC1(&map->s_lock);
	ref = --map->map_refcnt;
	if (ref > 0) {
		FUNC4(map);
		FUNC2(&map->s_lock);
		return;
	}
	FUNC0(map->map_refcnt == 0);
	FUNC2(&map->s_lock);

#if	TASK_SWAPPER
	/*
	 * The map residence count isn't decremented here because
	 * the vm_map_delete below will traverse the entire map,
	 * deleting entries, and the residence counts on objects
	 * and sharing maps will go away then.
	 */
#endif

	FUNC3(map, VM_MAP_REMOVE_NO_FLAGS);
}