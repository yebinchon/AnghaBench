#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ zone_map ; 

kern_return_t
FUNC5(
	vm_map_t	map,
	vm_map_offset_t	start,
	vm_map_offset_t	end,
	 boolean_t	flags)
{
	kern_return_t	result;

	FUNC3(map);
	FUNC0(map, start, end);
	/*
	 * For the zone_map, the kernel controls the allocation/freeing of memory.
	 * Any free to the zone_map should be within the bounds of the map and
	 * should free up memory. If the VM_MAP_RANGE_CHECK() silently converts a
	 * free to the zone_map into a no-op, there is a problem and we should
	 * panic.
	 */
	if ((map == zone_map) && (start == end))
		FUNC1("Nothing being freed to the zone_map. start = end = %p\n", (void *)start);
	result = FUNC2(map, start, end, flags, VM_MAP_NULL);
	FUNC4(map);

	return(result);
}