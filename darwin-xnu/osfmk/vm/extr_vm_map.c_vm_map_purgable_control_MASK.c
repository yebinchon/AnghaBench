#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_purgable_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int boolean_t ;
struct TYPE_19__ {int protection; scalar_t__ vme_end; scalar_t__ vme_start; int /*<<< orphan*/  use_pmap; scalar_t__ is_sub_map; } ;
struct TYPE_18__ {scalar_t__ pmap; } ;
struct TYPE_17__ {scalar_t__ purgable; scalar_t__ vo_size; int /*<<< orphan*/  vo_purgeable_volatilizer; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ADDRESS ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_PROTECTION_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 TYPE_1__* FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 TYPE_2__* VM_MAP_NULL ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int VM_PROT_WRITE ; 
 int VM_PURGABLE_ALL_MASKS ; 
 scalar_t__ VM_PURGABLE_DENY ; 
 int /*<<< orphan*/  VM_PURGABLE_GET_STATE ; 
 scalar_t__ VM_PURGABLE_NONVOLATILE ; 
 int /*<<< orphan*/  VM_PURGABLE_PURGE_ALL ; 
 int /*<<< orphan*/  VM_PURGABLE_SET_STATE ; 
 int /*<<< orphan*/  VM_PURGABLE_SET_STATE_FROM_KERNEL ; 
 int VM_PURGABLE_STATE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  kernel_task ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

kern_return_t
FUNC10(
	vm_map_t		map,
	vm_map_offset_t		address,
	vm_purgable_t		control,
	int			*state)
{
	vm_map_entry_t		entry;
	vm_object_t		object;
	kern_return_t		kr;
	boolean_t		was_nonvolatile;

	/*
	 * Vet all the input parameters and current type and state of the
	 * underlaying object.  Return with an error if anything is amiss.
	 */
	if (map == VM_MAP_NULL)
		return(KERN_INVALID_ARGUMENT);

	if (control != VM_PURGABLE_SET_STATE &&
	    control != VM_PURGABLE_GET_STATE &&
	    control != VM_PURGABLE_PURGE_ALL &&
	    control != VM_PURGABLE_SET_STATE_FROM_KERNEL)
		return(KERN_INVALID_ARGUMENT);

	if (control == VM_PURGABLE_PURGE_ALL) {
		FUNC9();
		return KERN_SUCCESS;
	}

	if ((control == VM_PURGABLE_SET_STATE ||
	     control == VM_PURGABLE_SET_STATE_FROM_KERNEL) &&
	    (((*state & ~(VM_PURGABLE_ALL_MASKS)) != 0) ||
	     ((*state & VM_PURGABLE_STATE_MASK) > VM_PURGABLE_STATE_MASK)))
		return(KERN_INVALID_ARGUMENT);

	FUNC3(map);

	if (!FUNC4(map, address, &entry) || entry->is_sub_map) {

		/*
		 * Must pass a valid non-submap address.
		 */
		FUNC5(map);
		return(KERN_INVALID_ADDRESS);
	}

	if ((entry->protection & VM_PROT_WRITE) == 0) {
		/*
		 * Can't apply purgable controls to something you can't write.
		 */
		FUNC5(map);
		return(KERN_PROTECTION_FAILURE);
	}

	object = FUNC0(entry);
	if (object == VM_OBJECT_NULL ||
	    object->purgable == VM_PURGABLE_DENY) {
		/*
		 * Object must already be present and be purgeable.
		 */
		FUNC5(map);
		return KERN_INVALID_ARGUMENT;
	}

	FUNC6(object);

#if 00
	if (VME_OFFSET(entry) != 0 ||
	    entry->vme_end - entry->vme_start != object->vo_size) {
		/*
		 * Can only apply purgable controls to the whole (existing)
		 * object at once.
		 */
		vm_map_unlock_read(map);
		vm_object_unlock(object);
		return KERN_INVALID_ARGUMENT;
	}
#endif

	FUNC2(!entry->is_sub_map);
	FUNC2(!entry->use_pmap); /* purgeable has its own accounting */

	FUNC5(map);

	was_nonvolatile = (object->purgable == VM_PURGABLE_NONVOLATILE);

	kr = FUNC7(object, control, state);

	if (was_nonvolatile &&
	    object->purgable != VM_PURGABLE_NONVOLATILE &&
	    map->pmap == kernel_pmap) {
#if DEBUG
		object->vo_purgeable_volatilizer = kernel_task;
#endif /* DEBUG */
	}

	FUNC8(object);

	return kr;
}