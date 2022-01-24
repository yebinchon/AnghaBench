#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* pv_rooted_entry_t ;
typedef  TYPE_2__* pv_hashed_entry_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  scalar_t__ pmap_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  qlink; } ;
struct TYPE_5__ {scalar_t__ pmap; } ;

/* Variables and functions */
 unsigned int INTEL_EPT_CACHE_MASK ; 
 unsigned int INTEL_EPT_NCACHE ; 
 unsigned int INTEL_EPT_WB ; 
 unsigned int INTEL_PTE_NCACHE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int PHYS_CACHEABILITY_MASK ; 
 scalar_t__ PMAP_NULL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(ppnum_t pn, unsigned attributes) {
	pv_rooted_entry_t	pv_h, pv_e;
	pv_hashed_entry_t       pvh_e, nexth;
	vm_map_offset_t vaddr;
	pmap_t	pmap;
	pt_entry_t	*ptep;
	boolean_t	is_ept;
	unsigned	ept_attributes;
	
	FUNC3(FUNC0(pn));
	FUNC3(((~PHYS_CACHEABILITY_MASK) & attributes) == 0);

	/* We don't support the PTA bit for EPT PTEs */
	if (attributes & INTEL_PTE_NCACHE)
		ept_attributes = INTEL_EPT_NCACHE;
	else
		ept_attributes = INTEL_EPT_WB;

	pv_h = FUNC5(pn);
	/* TODO: translate the PHYS_* bits to PTE bits, while they're
	 * currently identical, they may not remain so
	 * Potential optimization (here and in page_protect),
	 * parallel shootdowns, check for redundant
	 * attribute modifications.
	 */
	
	/*
	 * Alter attributes on all mappings
	 */
	if (pv_h->pmap != PMAP_NULL) {
		pv_e = pv_h;
		pvh_e = (pv_hashed_entry_t)pv_e;

		do {
			pmap = pv_e->pmap;
			vaddr = FUNC2(pv_e);
			ptep = FUNC7(pmap, vaddr);
			
			if (0 == ptep)
				FUNC6("pmap_update_cache_attributes_locked: Missing PTE, pmap: %p, pn: 0x%x vaddr: 0x%llx kernel_pmap: %p", pmap, pn, vaddr, kernel_pmap);

			is_ept = FUNC4(pmap);

			nexth = (pv_hashed_entry_t)FUNC9(&pvh_e->qlink);
			if (!is_ept) {
				FUNC8(ptep, PHYS_CACHEABILITY_MASK, attributes);
			} else {
				FUNC8(ptep, INTEL_EPT_CACHE_MASK, ept_attributes);
			}
			FUNC1(pmap, vaddr, vaddr + PAGE_SIZE);
			pvh_e = nexth;
		} while ((pv_e = (pv_rooted_entry_t)nexth) != pv_h);
	}
}