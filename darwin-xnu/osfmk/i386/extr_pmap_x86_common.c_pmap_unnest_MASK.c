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
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int pmap_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int addr64_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int INTEL_PDPTE_NESTED ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int NBPDE ; 
 scalar_t__ NBPDPT ; 
 scalar_t__ NPDEPG ; 
 int PDESHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PMAP_INVALID_PDPTNUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  PMAP__UNNEST ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ cpu_64bit ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,...) ; 
 int FUNC9 (int,int) ; 
 int* FUNC10 (int,int) ; 
 int pmap_nesting_size_min ; 
 int* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int*,int) ; 

kern_return_t FUNC13(pmap_t grand, addr64_t vaddr, uint64_t size) {
	pd_entry_t *pde;
	unsigned int i;
	uint64_t num_pde;
	addr64_t va_start, va_end;
	uint64_t npdpt = PMAP_INVALID_PDPTNUM;

	FUNC2(FUNC0(PMAP__UNNEST) | DBG_FUNC_START,
	           FUNC5(grand), FUNC5(vaddr));

	if ((size & (pmap_nesting_size_min-1)) ||
	    (vaddr & (pmap_nesting_size_min-1))) {
		FUNC8("pmap_unnest(%p,0x%llx,0x%llx): unaligned...\n",
		    grand, vaddr, size);
	}

	FUNC6(!FUNC7(grand));

	/* align everything to PDE boundaries */
	va_start = vaddr & ~(NBPDE-1);
	va_end = (vaddr + size + NBPDE - 1) & ~(NBPDE-1);
	size = va_end - va_start;

	FUNC1(grand);

	num_pde = size >> PDESHIFT;
	vaddr = va_start;

	for (i = 0; i < num_pde; ) {
		if ((FUNC9(grand, vaddr) != npdpt) && cpu_64bit) {
			npdpt = FUNC9(grand, vaddr);
			pde = FUNC10(grand, vaddr);
			if (pde && (*pde & INTEL_PDPTE_NESTED)) {
				FUNC12(pde, (pd_entry_t)0);
				i += (uint32_t) NPDEPG;
				vaddr += NBPDPT;
				continue;
			}
		}
		pde = FUNC11(grand, (vm_map_offset_t)vaddr);
		if (pde == 0)
			FUNC8("pmap_unnest: no pde, grand %p vaddr 0x%llx\n", grand, vaddr);
		FUNC12(pde, (pd_entry_t)0);
		i++;
		vaddr += NBPDE;
	}

	FUNC4(grand, va_start, va_end);

	FUNC3(grand);

	FUNC2(FUNC0(PMAP__UNNEST) | DBG_FUNC_END, KERN_SUCCESS);

	return KERN_SUCCESS;
}