#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  TYPE_2__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_10__ {scalar_t__ is_sub_map; } ;
struct TYPE_9__ {int /*<<< orphan*/  set_cache_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  vm_map_set_cache_attr_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

kern_return_t
FUNC6(
	vm_map_t	map,
	vm_map_offset_t	va)
{
	vm_map_entry_t	map_entry;
	vm_object_t	object;
	kern_return_t	kr = KERN_SUCCESS;

	FUNC1(map);

	if (!FUNC2(map, va, &map_entry) ||
	    map_entry->is_sub_map) {
		/*
		 * that memory is not properly mapped
		 */
		kr = KERN_INVALID_ARGUMENT;
		goto done;
	}
	object = FUNC0(map_entry);

	if (object == VM_OBJECT_NULL) {
		/*
		 * there should be a VM object here at this point
		 */
		kr = KERN_INVALID_ARGUMENT;
		goto done;
	}
	FUNC4(object);
	object->set_cache_attr = TRUE;
	FUNC5(object);

	vm_map_set_cache_attr_count++;
done:
	FUNC3(map);

	return kr;
}