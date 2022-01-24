#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_object_offset_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  pmap_paddr_t ;
typedef  int /*<<< orphan*/  pdpt_entry_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_14__ {int /*<<< orphan*/  pm_obj_pdpt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,void*) ; 
 int INTEL_EPT_EX ; 
 int INTEL_PTE_USER ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/ * PDPT_ENTRY_NULL ; 
 scalar_t__ PD_ENTRY_NULL ; 
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
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inuse_ptepages_count ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC17 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC19 (TYPE_1__*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC30(pmap_t map, vm_map_offset_t vaddr, unsigned int options)
{
	vm_page_t	m;
	pmap_paddr_t	pa;
	uint64_t	i;
	ppnum_t		pn;
	pdpt_entry_t	*pdptp;
	boolean_t	is_ept = FUNC13(map);

	FUNC0("pmap_expand_pdpt(%p,%p)\n", map, (void *)vaddr);

	while ((pdptp = FUNC18(map, vaddr)) == PDPT_ENTRY_NULL) {
		kern_return_t pep4kr = FUNC19(map, vaddr, options);
		if (pep4kr != KERN_SUCCESS)
			return pep4kr;
	}

	/*
	 *	Allocate a VM page for the pdpt page
	 */
	while ((m = FUNC24()) == VM_PAGE_NULL) {
		if (options & PMAP_EXPAND_OPTIONS_NOWAIT)
			return KERN_RESOURCE_SHORTAGE;
		FUNC11();
	}

	/*
	 *	put the page into the pmap's obj list so it
	 *	can be found later.
	 */
	pn = FUNC10(m);
	pa = FUNC12(pn);
	i = FUNC16(map, vaddr);

	/*
	 *	Zero the page.
	 */
	FUNC21(pn);

	FUNC26();
	FUNC29(m, VM_KERN_MEMORY_PTE, TRUE);
	FUNC28();

	FUNC1(1,  &inuse_ptepages_count);
	FUNC2(1,  &alloc_ptepages_count);
	FUNC5(map, PAGE_SIZE);

	/* Take the oject lock (mutex) before the PMAP_LOCK (spinlock) */
	FUNC22(map->pm_obj_pdpt);

	FUNC3(map);
	/*
	 *	See if someone else expanded us first
	 */
	if (FUNC17(map, vaddr) != PD_ENTRY_NULL) {
		FUNC4(map);
		FUNC23(map->pm_obj_pdpt);

		FUNC9(m);

		FUNC1(-1,  &inuse_ptepages_count);
		FUNC6(map, PAGE_SIZE);
		return KERN_SUCCESS;
	}

#if 0 /* DEBUG */
       if (0 != vm_page_lookup(map->pm_obj_pdpt, (vm_object_offset_t)i * PAGE_SIZE)) {
	       panic("pmap_expand_pdpt: obj not empty, pmap %p pm_obj %p vaddr 0x%llx i 0x%llx\n",
		     map, map->pm_obj_pdpt, vaddr, i);
       }
#endif
	FUNC25(m, map->pm_obj_pdpt, (vm_object_offset_t)i * PAGE_SIZE, VM_KERN_MEMORY_PTE);
	FUNC23(map->pm_obj_pdpt);

	/*
	 *	Set the page directory entry for this page table.
	 */
	pdptp = FUNC18(map, vaddr); /* refetch under lock */

	FUNC20(pdptp, FUNC14(pa)
				| FUNC7(is_ept)
				| (is_ept ? INTEL_EPT_EX : INTEL_PTE_USER)
				| FUNC8(is_ept));

	FUNC4(map);

	return KERN_SUCCESS;

}