#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  TYPE_1__* vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  TYPE_2__* vm_map_copy_t ;
typedef  scalar_t__ vm_map_address_t ;
typedef  TYPE_3__* thread_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_17__ {TYPE_1__* map; } ;
struct TYPE_16__ {scalar_t__ size; int /*<<< orphan*/  cpy_kdata; scalar_t__ offset; } ;
struct TYPE_15__ {scalar_t__ pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KERN_INVALID_ADDRESS ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_INHERIT_DEFAULT ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int /*<<< orphan*/  VM_MAP_KERNEL_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VM_MAP_REMOVE_NO_FLAGS ; 
 int /*<<< orphan*/  VM_OBJECT_NULL ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ cpy_kdata_hdr_sz ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ msg_ool_size_small ; 
 int /*<<< orphan*/  FUNC6 (char*,long long,long long) ; 
 int /*<<< orphan*/  vm_map_copyout_kernel_buffer_failures ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC14(
	vm_map_t		map,
	vm_map_address_t	*addr,	/* IN/OUT */
	vm_map_copy_t		copy,
	vm_map_size_t		copy_size,
	boolean_t		overwrite,
	boolean_t		consume_on_success)
{
	kern_return_t kr = KERN_SUCCESS;
	thread_t thread = FUNC3();

	FUNC1(copy->size == copy_size);

	/*
	 * check for corrupted vm_map_copy structure
	 */
	if (copy_size > msg_ool_size_small || copy->offset)
		FUNC6("Invalid vm_map_copy_t sz:%lld, ofst:%lld",
		      (long long)copy->size, (long long)copy->offset);

	if (!overwrite) {

		/*
		 * Allocate space in the target map for the data
		 */
		*addr = 0;
		kr = FUNC8(map,
				  addr,
				  FUNC11(copy_size,
						    FUNC0(map)),
				  (vm_map_offset_t) 0,
				  VM_FLAGS_ANYWHERE,
				  VM_MAP_KERNEL_FLAGS_NONE,
				  VM_KERN_MEMORY_NONE,
				  VM_OBJECT_NULL,
				  (vm_object_offset_t) 0,
				  FALSE,
				  VM_PROT_DEFAULT,
				  VM_PROT_ALL,
				  VM_INHERIT_DEFAULT);
		if (kr != KERN_SUCCESS)
			return kr;
#if KASAN
		if (map->pmap == kernel_pmap) {
			kasan_notify_address(*addr, copy->size);
		}
#endif
	}

	/*
	 * Copyout the data from the kernel buffer to the target map.
	 */
	if (thread->map == map) {

		/*
		 * If the target map is the current map, just do
		 * the copy.
		 */
		FUNC1((vm_size_t)copy_size == copy_size);
		if (FUNC2(copy->cpy_kdata, *addr, (vm_size_t)copy_size)) {
			kr = KERN_INVALID_ADDRESS;
		}
	}
	else {
		vm_map_t oldmap;

		/*
		 * If the target map is another map, assume the
		 * target's address space identity for the duration
		 * of the copy.
		 */
		FUNC9(map);
		oldmap = FUNC12(map);

		FUNC1((vm_size_t)copy_size == copy_size);
		if (FUNC2(copy->cpy_kdata, *addr, (vm_size_t)copy_size)) {
			vm_map_copyout_kernel_buffer_failures++;
			kr = KERN_INVALID_ADDRESS;
		}

		(void) FUNC12(oldmap);
		FUNC7(map);
	}

	if (kr != KERN_SUCCESS) {
		/* the copy failed, clean up */
		if (!overwrite) {
			/*
			 * Deallocate the space we allocated in the target map.
			 */
			(void) FUNC10(
				map,
				FUNC13(*addr,
						  FUNC0(map)),
				FUNC11((*addr +
						   FUNC11(copy_size,
								     FUNC0(map))),
						  FUNC0(map)),
				VM_MAP_REMOVE_NO_FLAGS);
			*addr = 0;
		}
	} else {
		/* copy was successful, dicard the copy structure */
		if (consume_on_success) {
			FUNC5(copy, copy_size + cpy_kdata_hdr_sz);
		}
	}

	return kr;
}