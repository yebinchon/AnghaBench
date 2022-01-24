#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_copy_t ;
struct TYPE_12__ {void* vme_prev; } ;
struct TYPE_11__ {void* vme_next; } ;
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  cpy_object; } ;

/* Variables and functions */
 scalar_t__ VM_MAP_COPY_ENTRY_LIST ; 
 TYPE_1__* VM_MAP_COPY_NULL ; 
 scalar_t__ VM_MAP_COPY_OBJECT ; 
 int /*<<< orphan*/  VM_OBJECT_NULL ; 
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  vm_map_copy_zone ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

vm_map_copy_t
FUNC4(
	vm_map_copy_t	copy)
{
	vm_map_copy_t	new_copy;

	if (copy == VM_MAP_COPY_NULL)
		return VM_MAP_COPY_NULL;

	/*
	 * Allocate a new copy object, and copy the information
	 * from the old one into it.
	 */

	new_copy = (vm_map_copy_t) FUNC3(vm_map_copy_zone);
	*new_copy = *copy;

	if (copy->type == VM_MAP_COPY_ENTRY_LIST) {
		/*
		 * The links in the entry chain must be
		 * changed to point to the new copy object.
		 */
		FUNC0(copy)->vme_prev
			= FUNC2(new_copy);
		FUNC1(copy)->vme_next
			= FUNC2(new_copy);
	}

	/*
	 * Change the old copy object into one that contains
	 * nothing to be deallocated.
	 */
	copy->type = VM_MAP_COPY_OBJECT;
	copy->cpy_object = VM_OBJECT_NULL;

	/*
	 * Return the new object.
	 */
	return new_copy;
}