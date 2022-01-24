#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_2__* pv_rooted_entry_t ;
typedef  TYPE_3__* pv_hashed_entry_t ;
typedef  char pt_entry_t ;
typedef  scalar_t__ ppnum_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int /*<<< orphan*/  pmap_flush_context ;
typedef  scalar_t__ boolean_t ;
struct TYPE_20__ {int /*<<< orphan*/  phys_footprint; int /*<<< orphan*/  internal; } ;
struct TYPE_16__ {scalar_t__ reusable; scalar_t__ internal; scalar_t__ external; } ;
struct TYPE_19__ {TYPE_1__ stats; } ;
struct TYPE_18__ {int /*<<< orphan*/  qlink; TYPE_4__* pmap; } ;
struct TYPE_17__ {scalar_t__ pmap; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 scalar_t__ FALSE ; 
 char INTEL_EPT_MOD ; 
 scalar_t__ FUNC0 (int,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__*) ; 
 scalar_t__ PAGE_SIZE ; 
 int PHYS_MODIFIED ; 
 int PHYS_REFERENCED ; 
 char PHYS_REUSABLE ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ PMAP_NULL ; 
 unsigned int PMAP_OPTIONS_CLEAR_REUSABLE ; 
 unsigned int PMAP_OPTIONS_CLEAR_WRITE ; 
 unsigned int PMAP_OPTIONS_NOFLUSH ; 
 unsigned int PMAP_OPTIONS_SET_REUSABLE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PMAP__ATTRIBUTE_CLEAR ; 
 char FUNC11 (scalar_t__) ; 
 char FUNC12 (scalar_t__) ; 
 char FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 char FUNC17 (char) ; 
 scalar_t__ FUNC18 (TYPE_4__*) ; 
 TYPE_4__* kernel_pmap ; 
 TYPE_2__* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (char*,scalar_t__,int,unsigned int,void*) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  pmap_ept_support_ad ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* pmap_phys_attributes ; 
 char* FUNC25 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (char*,char,int /*<<< orphan*/ ) ; 
 int FUNC27 (scalar_t__) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 TYPE_5__ task_ledgers ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 

void
FUNC29(
	ppnum_t		pn,
	int		bits,
	unsigned int	options,
	void		*arg)
{
	pv_rooted_entry_t	pv_h;
	pv_hashed_entry_t	pv_e;
	pt_entry_t		*pte = NULL;
	int			pai;
	pmap_t			pmap;
	char			attributes = 0;
	boolean_t		is_internal, is_reusable, is_altacct, is_ept;
	int			ept_bits_to_clear;
	boolean_t		ept_keep_global_mod = FALSE;

	if ((bits & PHYS_MODIFIED) &&
	    (options & PMAP_OPTIONS_NOFLUSH) &&
	    arg == NULL) {
		FUNC20("phys_attribute_clear(0x%x,0x%x,0x%x,%p): "
		      "should not clear 'modified' without flushing TLBs\n",
		      pn, bits, options, arg);
	}

	/* We only support converting MOD and REF bits for EPT PTEs in this function */
	FUNC16((bits & ~(PHYS_REFERENCED | PHYS_MODIFIED)) == 0);

	ept_bits_to_clear = (unsigned)FUNC21(bits & (PHYS_MODIFIED | PHYS_REFERENCED));

	FUNC22();
	FUNC16(pn != vm_page_fictitious_addr);
	if (pn == vm_page_guard_addr)
		return;

	pai = FUNC27(pn);

	if (!FUNC2(pai)) {
		/*
		 *	Not a managed page.
		 */
		return;
	}

	FUNC8(FUNC6(PMAP__ATTRIBUTE_CLEAR) | DBG_FUNC_START, pn, bits);

	pv_h = FUNC19(pai);

	FUNC4(pai);


	/*
	 * Walk down PV list, clearing all modify or reference bits.
	 * We do not have to lock the pv_list because we have
	 * the per-pmap lock
	 */
	if (pv_h->pmap != PMAP_NULL) {
		/*
		 * There are some mappings.
		 */

		is_internal = FUNC1(pai);
		is_reusable = FUNC3(pai);

		pv_e = (pv_hashed_entry_t)pv_h;

		do {
			vm_map_offset_t	va;
			char pte_bits;

			pmap = pv_e->pmap;
			is_ept = FUNC18(pmap);
			is_altacct = FUNC0(pai, pv_e);
			va = FUNC14(pv_e);
			pte_bits = 0;

			if (bits) {
				pte = FUNC25(pmap, va);
				/* grab ref/mod bits from this PTE */
				pte_bits = (*pte & (FUNC12(is_ept) | FUNC11(is_ept)));
				/* propagate to page's global attributes */
				if (!is_ept) {
					attributes |= pte_bits;
				} else {
					attributes |= FUNC17(pte_bits);
					if (!pmap_ept_support_ad && (pte_bits & INTEL_EPT_MOD)) {
						ept_keep_global_mod = TRUE;
					}
				}
				/* which bits to clear for this PTE? */
				if (!is_ept) {
					pte_bits &= bits;
				} else {
					pte_bits &= ept_bits_to_clear;
				}
			}
			if (options & PMAP_OPTIONS_CLEAR_WRITE)
			        pte_bits |= FUNC13(is_ept);

			 /*
			  * Clear modify and/or reference bits.
			  */
			if (pte_bits) {
				FUNC26(pte, pte_bits, 0);

				/* Ensure all processors using this translation
				 * invalidate this TLB entry. The invalidation
				 * *must* follow the PTE update, to ensure that
				 * the TLB shadow of the 'D' bit (in particular)
				 * is synchronized with the updated PTE.
				 */
				if (! (options & PMAP_OPTIONS_NOFLUSH)) {
					/* flush TLBS now */
					FUNC9(pmap,
							 va,
							 va + PAGE_SIZE);
				} else if (arg) {
					/* delayed TLB flush: add "pmap" info */
					FUNC10(
						pmap,
						va,
						va + PAGE_SIZE,
						(pmap_flush_context *)arg);
				} else {
					/* no TLB flushing at all */
				}
			}

			/* update pmap "reusable" stats */
			if ((options & PMAP_OPTIONS_CLEAR_REUSABLE) &&
			    is_reusable &&
			    pmap != kernel_pmap) {
				/* one less "reusable" */
				FUNC16(pmap->stats.reusable > 0);
				FUNC5(-1, &pmap->stats.reusable);
				if (is_internal) {
					/* one more "internal" */
					FUNC5(+1, &pmap->stats.internal);
					FUNC7(pmap->stats.internal);
					FUNC16(pmap->stats.internal > 0);
					if (is_altacct) {
						/* no impact on ledgers */
					} else {
						FUNC23(pmap,
								   task_ledgers.internal,
								   PAGE_SIZE);
						FUNC23(
							pmap,
							task_ledgers.phys_footprint,
							PAGE_SIZE);
					}
				} else {
					/* one more "external" */
					FUNC5(+1, &pmap->stats.external);
					FUNC7(pmap->stats.external);
					FUNC16(pmap->stats.external > 0);
				}
			} else if ((options & PMAP_OPTIONS_SET_REUSABLE) &&
				   !is_reusable &&
				   pmap != kernel_pmap) {
				/* one more "reusable" */
				FUNC5(+1, &pmap->stats.reusable);
				FUNC7(pmap->stats.reusable);
				FUNC16(pmap->stats.reusable > 0);
				if (is_internal) {
					/* one less "internal" */
					FUNC16(pmap->stats.internal > 0);
					FUNC5(-1, &pmap->stats.internal);
					if (is_altacct) {
						/* no impact on footprint */
					} else {
						FUNC24(pmap,
								  task_ledgers.internal,
								  PAGE_SIZE);
						FUNC24(
							pmap,
							task_ledgers.phys_footprint,
							PAGE_SIZE);
					}
				} else {
					/* one less "external" */
					FUNC16(pmap->stats.external > 0);
					FUNC5(-1, &pmap->stats.external);
				}
			}

			pv_e = (pv_hashed_entry_t)FUNC28(&pv_e->qlink);

		} while (pv_e != (pv_hashed_entry_t)pv_h);
	}
	/* Opportunistic refmod collection, annulled
	 * if both REF and MOD are being cleared.
	 */

	pmap_phys_attributes[pai] |= attributes;

	if (ept_keep_global_mod) {
		/*
		 * If the hardware doesn't support AD bits for EPT PTEs and someone is
		 * requesting that we clear the modified bit for a phys page, we need
		 * to ensure that there are no EPT mappings for the page with the
		 * modified bit set. If there are, we cannot clear the global modified bit.
		 */
		bits &= ~PHYS_MODIFIED;
	}
	pmap_phys_attributes[pai] &= ~(bits);

	/* update this page's "reusable" status */
	if (options & PMAP_OPTIONS_CLEAR_REUSABLE) {
		pmap_phys_attributes[pai] &= ~PHYS_REUSABLE;
	} else if (options & PMAP_OPTIONS_SET_REUSABLE) {
		pmap_phys_attributes[pai] |= PHYS_REUSABLE;
	}

	FUNC15(pai);

	FUNC8(FUNC6(PMAP__ATTRIBUTE_CLEAR) | DBG_FUNC_END);
}