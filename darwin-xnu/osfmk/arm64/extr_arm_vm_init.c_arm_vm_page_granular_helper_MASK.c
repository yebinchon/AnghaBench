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
typedef  int vm_offset_t ;
typedef  int tt_entry_t ;
typedef  int pt_entry_t ;
typedef  int pmap_paddr_t ;
typedef  int /*<<< orphan*/  addr64_t ;

/* Variables and functions */
 int ARM_PGBYTES ; 
 int ARM_PTE_AF ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ARM_PTE_HINT ; 
 int ARM_PTE_HINT_ADDR_SHIFT ; 
 int ARM_PTE_NG ; 
 int ARM_PTE_NX ; 
 int ARM_PTE_PNX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ARM_PTE_TYPE ; 
 int ARM_PTE_TYPE_FAULT ; 
 int ARM_TTE_TABLE_MASK ; 
 int ARM_TTE_TYPE_MASK ; 
 int ARM_TTE_TYPE_TABLE ; 
 int ARM_TTE_VALID ; 
 int ARM_TT_L2_OFFMASK ; 
 unsigned int ARM_TT_L3_INDEX_MASK ; 
 unsigned int ARM_TT_L3_SHIFT ; 
 int /*<<< orphan*/  CACHE_ATTRINDX_DEFAULT ; 
 int /*<<< orphan*/  SH_OUTER_MEMORY ; 
 scalar_t__ FUNC3 (int) ; 
 int* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int gPhysBase ; 
 int gVirtBase ; 
 scalar_t__ kva_active ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int real_avail_end ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 scalar_t__ use_contiguous_hint ; 

__attribute__((used)) static void
FUNC12(vm_offset_t start, vm_offset_t _end, vm_offset_t va, pmap_paddr_t pa_offset,
                            int pte_prot_APX, int pte_prot_XN, bool force_page_granule,
                            pt_entry_t **deferred_pte, pt_entry_t *deferred_ptmp)
{
	if (va & ARM_TT_L2_OFFMASK) { /* ragged edge hanging over a ARM_TT_L2_SIZE  boundary */
		tt_entry_t *tte2;
		tt_entry_t tmplate;
		pmap_paddr_t pa;
		pt_entry_t *ppte, *recursive_pte = NULL, ptmp, recursive_ptmp = 0;
		addr64_t ppte_phys;
		unsigned i;

		va &= ~ARM_TT_L2_OFFMASK;
		pa = va - gVirtBase + gPhysBase - pa_offset;

		if (pa >= real_avail_end)
			return;

		tte2 = FUNC4(va);

		FUNC5(_end >= va);
		tmplate = *tte2;

		if (ARM_TTE_TYPE_TABLE == (tmplate & ARM_TTE_TYPE_MASK)) {
			/* pick up the existing page table. */
			ppte = (pt_entry_t *)FUNC9((tmplate & ARM_TTE_TABLE_MASK));
		} else {
			// TTE must be reincarnated with page level mappings.
			ppte = (pt_entry_t*)FUNC3(pa_offset == 0);
			FUNC6(ppte, ARM_PGBYTES);
			ppte_phys = FUNC7((vm_offset_t)ppte);

			*tte2 = FUNC8(ppte_phys) | ARM_TTE_TYPE_TABLE | ARM_TTE_VALID;
		}

		vm_offset_t len = _end - va;
		if ((pa + len) > real_avail_end)
			_end -= (pa + len - real_avail_end);
		FUNC5((start - gVirtBase + gPhysBase - pa_offset) >= gPhysBase);

		/* Round up to the nearest PAGE_SIZE boundary when creating mappings:
		 * PAGE_SIZE may be a multiple of ARM_PGBYTES, and we don't want to leave
		 * a ragged non-PAGE_SIZE-aligned edge. */
		vm_offset_t rounded_end = FUNC10(_end);
		/* Apply the desired protections to the specified page range */
		for (i = 0; i <= (ARM_TT_L3_INDEX_MASK>>ARM_TT_L3_SHIFT); i++) {
			if ((start <= va) && (va < rounded_end)) {

				ptmp = pa | ARM_PTE_AF | FUNC2(SH_OUTER_MEMORY) | ARM_PTE_TYPE;
				ptmp = ptmp | FUNC1(CACHE_ATTRINDX_DEFAULT);
				ptmp = ptmp | FUNC0(pte_prot_APX);
				ptmp = ptmp | ARM_PTE_NX;
#if __ARM_KERNEL_PROTECT__
				ptmp = ptmp | ARM_PTE_NG;
#endif /* __ARM_KERNEL_PROTECT__ */

				if (pte_prot_XN) {
					ptmp = ptmp | ARM_PTE_PNX;
				}

				/*
				 * If we can, apply the contiguous hint to this range.  The hint is
				 * applicable if the current address falls within a hint-sized range that will
				 * be fully covered by this mapping request.
				 */
				if ((va >= FUNC11(start)) && (FUNC11(va + 1) <= _end) &&
				    !force_page_granule && use_contiguous_hint) {
					FUNC5((va & ((1 << ARM_PTE_HINT_ADDR_SHIFT) - 1)) == ((pa & ((1 << ARM_PTE_HINT_ADDR_SHIFT) - 1))));
					ptmp |= ARM_PTE_HINT;
				}
				/*
				 * Do not change the contiguous bit on an active mapping.  Even in a single-threaded
				 * environment, it's possible for prefetch to produce a TLB conflict by trying to pull in
				 * a hint-sized entry on top of one or more existing page-sized entries.  It's also useful
				 * to make sure we're not trying to unhint a sub-range of a larger hinted range, which
				 * could produce a later TLB conflict.
				 */
				FUNC5(!kva_active || (ppte[i] == ARM_PTE_TYPE_FAULT) || ((ppte[i] & ARM_PTE_HINT) == (ptmp & ARM_PTE_HINT)));

				/* 
				 * If we reach an entry that maps the current pte page, delay updating it until the very end.
				 * Otherwise we might end up making the PTE page read-only, leading to a fault later on in
				 * this function if we manage to outrun the TLB.  This can happen on KTRR-enabled devices when
				 * marking segDATACONST read-only.  Mappings for this region may straddle a PT page boundary,
				 * so we must also defer assignment of the following PTE.  We will assume that if the region
				 * were to require one or more full L3 pages, it would instead use L2 blocks where possible,
				 * therefore only requiring at most one L3 page at the beginning and one at the end. 
				 */
				if (kva_active && ((pt_entry_t*)(FUNC9(pa)) == ppte)) {
					FUNC5(recursive_pte == NULL);	
					FUNC5(!force_page_granule);
					recursive_pte = &ppte[i];
					recursive_ptmp = ptmp;
				} else if ((deferred_pte != NULL) && (&ppte[i] == &recursive_pte[1])) {
					FUNC5(*deferred_pte == NULL);
					FUNC5(deferred_ptmp != NULL);
					*deferred_pte = &ppte[i];
					*deferred_ptmp = ptmp;
				} else {
					ppte[i] = ptmp;
				}
			}

			va += ARM_PGBYTES;
			pa += ARM_PGBYTES;
		}
		if (recursive_pte != NULL)
			*recursive_pte = recursive_ptmp;
	}
}