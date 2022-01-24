#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_object_offset_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  int /*<<< orphan*/  pml4_entry_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  pmap_paddr_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_15__ {int /*<<< orphan*/  pm_obj_pml4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,void*) ; 
 int INTEL_EPT_EX ; 
 int INTEL_PTE_USER ; 
 scalar_t__ KERNEL_BASEMENT ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 scalar_t__ PDPT_ENTRY_NULL ; 
 unsigned int PMAP_EXPAND_OPTIONS_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_PTE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  alloc_ptepages_count ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inuse_ptepages_count ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 TYPE_1__* kernel_pmap ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC31(
	pmap_t		map,
	vm_map_offset_t	vaddr,
	unsigned int options)
{
	vm_page_t	m;
	pmap_paddr_t	pa;
	uint64_t	i;
	ppnum_t		pn;
	pml4_entry_t	*pml4p;
	boolean_t	is_ept = FUNC14(map);

	FUNC0("pmap_expand_pml4(%p,%p)\n", map, (void *)vaddr);

	/* With the exception of the kext "basement", the kernel's level 4
	 * pagetables must not be dynamically expanded.
	 */
	FUNC12(map != kernel_pmap || (vaddr == KERNEL_BASEMENT));
	/*
	 *	Allocate a VM page for the pml4 page
	 */
	while ((m = FUNC25()) == VM_PAGE_NULL) {
		if (options & PMAP_EXPAND_OPTIONS_NOWAIT)
			return KERN_RESOURCE_SHORTAGE;
		FUNC11();
	}
	/*
	 *	put the page into the pmap's obj list so it
	 *	can be found later.
	 */
	pn = FUNC10(m);
	pa = FUNC13(pn);
	i = FUNC22(map, vaddr);

	/*
	 *	Zero the page.
	 */
	FUNC21(pn);

	FUNC27();
	FUNC30(m, VM_KERN_MEMORY_PTE, TRUE);
	FUNC29();

	FUNC1(1,  &inuse_ptepages_count);
	FUNC2(1,  &alloc_ptepages_count);
	FUNC5(map, PAGE_SIZE);

	/* Take the oject lock (mutex) before the PMAP_LOCK (spinlock) */
	FUNC23(map->pm_obj_pml4);

	FUNC3(map);
	/*
	 *	See if someone else expanded us first
	 */
	if (FUNC17(map, vaddr) != PDPT_ENTRY_NULL) {
	        FUNC4(map);
		FUNC24(map->pm_obj_pml4);

		FUNC9(m);

		FUNC1(-1,  &inuse_ptepages_count);
		FUNC6(map, PAGE_SIZE);
		return KERN_SUCCESS;
	}

#if 0 /* DEBUG */
       if (0 != vm_page_lookup(map->pm_obj_pml4, (vm_object_offset_t)i * PAGE_SIZE)) {
	       panic("pmap_expand_pml4: obj not empty, pmap %p pm_obj %p vaddr 0x%llx i 0x%llx\n",
		     map, map->pm_obj_pml4, vaddr, i);
       }
#endif
	FUNC26(m, map->pm_obj_pml4, (vm_object_offset_t)i * PAGE_SIZE, VM_KERN_MEMORY_PTE);
	FUNC24(map->pm_obj_pml4);

	/*
	 *	Set the page directory entry for this page table.
	 */
	pml4p = FUNC18(map, vaddr); /* refetch under lock */

	FUNC20(pml4p, FUNC15(pa)
				| FUNC7(is_ept)
				| (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
				| FUNC8(is_ept));
	pml4_entry_t	*upml4p;

	upml4p = FUNC19(map, vaddr);
	FUNC20(upml4p, FUNC15(pa)
				| FUNC7(is_ept)
				| (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
				| FUNC8(is_ept));

	FUNC4(map);

	return KERN_SUCCESS;
}