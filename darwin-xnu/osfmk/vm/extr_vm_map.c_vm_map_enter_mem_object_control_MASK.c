#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_tag_t ;
typedef  int vm_prot_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_object_size_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  scalar_t__ vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
struct TYPE_22__ {int vmkf_fourk; } ;
typedef  TYPE_2__ vm_map_kernel_flags_t ;
typedef  scalar_t__ vm_map_address_t ;
typedef  int /*<<< orphan*/  vm_inherit_t ;
typedef  scalar_t__ memory_object_t ;
typedef  int /*<<< orphan*/  memory_object_control_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int boolean_t ;
struct TYPE_21__ {scalar_t__ pager; scalar_t__ copy_strategy; int pager_ready; scalar_t__ named; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOURK_PAGE_MASK ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_INVALID_OBJECT ; 
 scalar_t__ KERN_MEMORY_RESTART_COPY ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MEMORY_OBJECT_COPY_NONE ; 
 scalar_t__ MEMORY_OBJECT_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  VM_INHERIT_LAST_VALID ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int VM_PROT_ALL ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* kernel_object ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__*,scalar_t__,scalar_t__,int,TYPE_2__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__*,scalar_t__,scalar_t__,int,TYPE_2__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

kern_return_t
FUNC19(
	vm_map_t		target_map,
	vm_map_offset_t		*address,
	vm_map_size_t		initial_size,
	vm_map_offset_t		mask,
	int			flags,
	vm_map_kernel_flags_t	vmk_flags,
	vm_tag_t		tag,
	memory_object_control_t	control,
	vm_object_offset_t	offset,
	boolean_t		copy,
	vm_prot_t		cur_protection,
	vm_prot_t		max_protection,
	vm_inherit_t		inheritance)
{
	vm_map_address_t	map_addr;
	vm_map_size_t		map_size;
	vm_object_t		object;
	vm_object_size_t	size;
	kern_return_t		result;
	memory_object_t		pager;
	vm_prot_t		pager_prot;
	kern_return_t		kr;
#if __arm64__
	boolean_t		fourk = vmk_flags.vmkf_fourk;
#endif /* __arm64__ */

	/*
	 * Check arguments for validity
	 */
	if ((target_map == VM_MAP_NULL) ||
	    (cur_protection & ~VM_PROT_ALL) ||
	    (max_protection & ~VM_PROT_ALL) ||
	    (inheritance > VM_INHERIT_LAST_VALID) ||
	    initial_size == 0) {
		return KERN_INVALID_ARGUMENT;
	}

#if __arm64__
	if (fourk) {
		map_addr = vm_map_trunc_page(*address,
					     FOURK_PAGE_MASK);
		map_size = vm_map_round_page(initial_size,
					     FOURK_PAGE_MASK);
	} else
#endif /* __arm64__ */
	{
		map_addr = FUNC8(*address,
					     FUNC0(target_map));
		map_size = FUNC7(initial_size,
					     FUNC0(target_map));
	}
	size = FUNC17(initial_size);

	object = FUNC2(control);

	if (object == VM_OBJECT_NULL)
		return KERN_INVALID_OBJECT;

	if (object == kernel_object) {
		FUNC4("Warning: Attempt to map kernel object"
		       " by a non-private kernel entity\n");
		return KERN_INVALID_OBJECT;
	}

	FUNC12(object);
	object->ref_count++;
	FUNC16(object);

	/*
	 * For "named" VM objects, let the pager know that the
	 * memory object is being mapped.  Some pagers need to keep
	 * track of this, to know when they can reclaim the memory
	 * object, for example.
	 * VM calls memory_object_map() for each mapping (specifying
	 * the protection of each mapping) and calls
	 * memory_object_last_unmap() when all the mappings are gone.
	 */
	pager_prot = max_protection;
	if (copy) {
		pager_prot &= ~VM_PROT_WRITE;
	}
	pager = object->pager;
	if (object->named &&
	    pager != MEMORY_OBJECT_NULL &&
	    object->copy_strategy != MEMORY_OBJECT_COPY_NONE) {
		FUNC1(object->pager_ready);
		FUNC15(object, THREAD_UNINT);
		FUNC13(object);
		FUNC18(object);

		kr = FUNC3(pager, pager_prot);
		FUNC1(kr == KERN_SUCCESS);

		FUNC12(object);
		FUNC14(object);
	}
	FUNC18(object);

	/*
	 *	Perform the copy if requested
	 */

	if (copy) {
		vm_object_t		new_object;
		vm_object_offset_t	new_offset;

		result = FUNC10(object, offset, size,
						      &new_object, &new_offset,
						      &copy);


		if (result == KERN_MEMORY_RESTART_COPY) {
			boolean_t success;
			boolean_t src_needs_copy;

			/*
			 * XXX
			 * We currently ignore src_needs_copy.
			 * This really is the issue of how to make
			 * MEMORY_OBJECT_COPY_SYMMETRIC safe for
			 * non-kernel users to use. Solution forthcoming.
			 * In the meantime, since we don't allow non-kernel
			 * memory managers to specify symmetric copy,
			 * we won't run into problems here.
			 */
			new_object = object;
			new_offset = offset;
			success = FUNC9(&new_object,
							 new_offset, size,
							 &src_needs_copy,
							 &copy);
			FUNC1(success);
			result = KERN_SUCCESS;
		}
		/*
		 *	Throw away the reference to the
		 *	original object, as it won't be mapped.
		 */

		FUNC11(object);

		if (result != KERN_SUCCESS) {
			return result;
		}

		object = new_object;
		offset = new_offset;
	}

#if __arm64__
	if (fourk) {
		result = vm_map_enter_fourk(target_map,
					    &map_addr,
					    map_size,
					    (vm_map_offset_t)mask,
					    flags,
					    vmk_flags,
					    tag,
					    object, offset,
					    copy,
					    cur_protection, max_protection,
					    inheritance);
	} else
#endif /* __arm64__ */
	{
		result = FUNC5(target_map,
				      &map_addr, map_size,
				      (vm_map_offset_t)mask,
				      flags,
				      vmk_flags,
				      tag,
				      object, offset,
				      copy,
				      cur_protection, max_protection,
				      inheritance);
	}
	if (result != KERN_SUCCESS)
		FUNC11(object);
	*address = map_addr;

	return result;
}