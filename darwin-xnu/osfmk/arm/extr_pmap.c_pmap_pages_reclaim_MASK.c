#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  int vm_map_address_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int tt_entry_t ;
typedef  int /*<<< orphan*/  queue_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
struct TYPE_17__ {TYPE_2__* pt_cnt; TYPE_1__* pt_map; TYPE_4__* pmap; } ;
typedef  TYPE_3__ pt_desc_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int /*<<< orphan*/  pmap_paddr_t ;
struct TYPE_19__ {struct TYPE_19__* next; } ;
typedef  TYPE_5__ page_free_entry_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_18__ {scalar_t__ nested; int asid; int /*<<< orphan*/  lock; } ;
struct TYPE_16__ {scalar_t__ refcnt; scalar_t__ wiredcnt; } ;
struct TYPE_15__ {int va; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int ARM_TTE_TYPE_MASK ; 
 int ARM_TTE_TYPE_TABLE ; 
 int ARM_TT_L1_PT_OFFMASK ; 
 int ARM_TT_L1_SIZE ; 
 int ARM_TT_L2_OFFMASK ; 
 int ARM_TT_L2_SIZE ; 
 scalar_t__ FALSE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  PMAP_OPTIONS_REMOVE ; 
 int /*<<< orphan*/  PMAP_TT_L1_LEVEL ; 
 int /*<<< orphan*/  PMAP_TT_L2_LEVEL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ PT_DESC_REFCOUNT ; 
 unsigned int PT_INDEX_MAX ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,TYPE_4__*) ; 
 TYPE_4__* kernel_pmap ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  pmap_pages_lock ; 
 TYPE_5__* pmap_pages_reclaim_list ; 
 int /*<<< orphan*/  pmap_pages_request_acum ; 
 int /*<<< orphan*/  pmap_pages_request_count ; 
 scalar_t__ FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int* FUNC12 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt_page_list ; 
 int /*<<< orphan*/  pt_pages_lock ; 
 size_t FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 size_t FUNC21 (TYPE_4__*,int) ; 
 scalar_t__ FUNC22 (int) ; 

pmap_paddr_t
FUNC23(
	void)
{
	boolean_t		found_page;
	unsigned		i;
	pt_desc_t		*ptdp;


	/*
	 * pmap_pages_reclaim() is returning a page by freeing an active pt page.
	 * To be eligible, a pt page is assigned to a user pmap. It doesn't have any wired pte
	 * entry and it  contains at least one valid pte entry.
	 *
	 * In a loop, check for a page in the reclaimed pt page list.
	 * if one is present, unlink that page and return the physical page address.
	 * Otherwise, scan the pt page list for an eligible pt page to reclaim.
	 * If found, invoke pmap_remove_range() on its pmap and address range then
	 * deallocates that pt page. This will end up adding the pt page to the
	 * reclaimed pt page list.
	 * If no eligible page were found in the pt page list, panic.
	 */

	FUNC9(&pmap_pages_lock);
	pmap_pages_request_count++;
	pmap_pages_request_acum++;

	while (1) {

		if (pmap_pages_reclaim_list != (page_free_entry_t *)NULL) {
			page_free_entry_t	*page_entry;

			page_entry = pmap_pages_reclaim_list;
			pmap_pages_reclaim_list = pmap_pages_reclaim_list->next;
			FUNC11(&pmap_pages_lock);

			return((pmap_paddr_t)FUNC6((vm_offset_t)page_entry));
		}

		FUNC11(&pmap_pages_lock);

		FUNC9(&pt_pages_lock);
		ptdp = (pt_desc_t *)FUNC16(&pt_page_list);
		found_page = FALSE;

		while (!FUNC15(&pt_page_list, (queue_entry_t)ptdp)) {
			if ((ptdp->pmap->nested == FALSE)
			    && (FUNC10(&ptdp->pmap->lock))) {

				FUNC3(ptdp->pmap != kernel_pmap);
				unsigned refcnt_acc = 0;
				unsigned wiredcnt_acc = 0;

				for (i = 0 ; i < PT_INDEX_MAX ; i++) {
					if (ptdp->pt_cnt[i].refcnt == PT_DESC_REFCOUNT) {
						/* Do not attempt to free a page that contains an L2 table */
						refcnt_acc = 0;
						break;
					}
					refcnt_acc += ptdp->pt_cnt[i].refcnt;
					wiredcnt_acc += ptdp->pt_cnt[i].wiredcnt;
				}
				if ((wiredcnt_acc == 0) && (refcnt_acc != 0)) {
					found_page = TRUE;
					/* Leave ptdp->pmap locked here.  We're about to reclaim
					 * a tt page from it, so we don't want anyone else messing
					 * with it while we do that. */
					break;
				}
				FUNC11(&ptdp->pmap->lock);
			}
			ptdp = (pt_desc_t *)FUNC17((queue_t)ptdp);
		}
		if (!found_page) {
			FUNC7("pmap_pages_reclaim(): No eligible page in pt_page_list\n");
		} else {
			int					remove_count = 0;
			vm_map_address_t	va;
			pmap_t				pmap;
			pt_entry_t			*bpte, *epte;
			pt_entry_t			*pte_p;
			tt_entry_t			*tte_p;
			uint32_t			rmv_spte=0;

			FUNC11(&pt_pages_lock);
			pmap = ptdp->pmap;
			FUNC1(pmap); // pmap lock should be held from loop above
			for (i = 0 ; i < PT_INDEX_MAX ; i++) {
				va = ptdp->pt_map[i].va;

				/* If the VA is bogus, this may represent an unallocated region
				 * or one which is in transition (already being freed or expanded).
				 * Don't try to remove mappings here. */
				if (va == (vm_offset_t)-1)
					continue;

				tte_p = FUNC12(pmap, va);
				if ((tte_p != (tt_entry_t *) NULL)
				    && ((*tte_p & ARM_TTE_TYPE_MASK) == ARM_TTE_TYPE_TABLE)) {

#if	(__ARM_VMSA__ == 7)
					pte_p = (pt_entry_t *) ttetokv(*tte_p);
					bpte = &pte_p[ptenum(va)];
					epte = bpte + PAGE_SIZE/sizeof(pt_entry_t);
#else
					pte_p = (pt_entry_t *) FUNC22(*tte_p);
					bpte = &pte_p[FUNC21(pmap, va)];
					epte = bpte + PAGE_SIZE/sizeof(pt_entry_t);
#endif
					/*
					 * Use PMAP_OPTIONS_REMOVE to clear any
					 * "compressed" markers and update the
					 * "compressed" counter in pmap->stats.
					 * This means that we lose accounting for
					 * any compressed pages in this range
					 * but the alternative is to not be able
					 * to account for their future decompression,
					 * which could cause the counter to drift
					 * more and more.
					 */
					remove_count += FUNC8(
						pmap, va, bpte, epte,
						&rmv_spte, PMAP_OPTIONS_REMOVE);
					if (ptdp->pt_cnt[FUNC0(pte_p)].refcnt != 0)
						FUNC7("pmap_pages_reclaim(): ptdp %p, count %d\n", ptdp, ptdp->pt_cnt[FUNC0(pte_p)].refcnt);
#if	(__ARM_VMSA__ == 7)
					pmap_tte_deallocate(pmap, tte_p, PMAP_TT_L1_LEVEL);
					flush_mmu_tlb_entry_async((va & ~ARM_TT_L1_PT_OFFMASK) | (pmap->asid & 0xff));
					flush_mmu_tlb_entry_async(((va & ~ARM_TT_L1_PT_OFFMASK) + ARM_TT_L1_SIZE) | (pmap->asid & 0xff));
					flush_mmu_tlb_entry_async(((va & ~ARM_TT_L1_PT_OFFMASK) + 2*ARM_TT_L1_SIZE)| (pmap->asid & 0xff));
					flush_mmu_tlb_entry_async(((va & ~ARM_TT_L1_PT_OFFMASK) + 3*ARM_TT_L1_SIZE)| (pmap->asid & 0xff));
#else
					FUNC13(pmap, tte_p, PMAP_TT_L2_LEVEL);
					FUNC4(FUNC19(va & ~ARM_TT_L2_OFFMASK) | FUNC20(pmap->asid));
#endif

					if (remove_count > 0) {
#if	(__ARM_VMSA__ == 7)
						flush_mmu_tlb_region_asid_async(va, 4*ARM_TT_L1_SIZE, pmap);
#else
						FUNC5(va, ARM_TT_L2_SIZE, pmap);
#endif
					}
				}
			}
			FUNC18();
			// Undo the lock we grabbed when we found ptdp above
			FUNC2(pmap);
		}
		FUNC9(&pmap_pages_lock);
	}
}