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
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  int uint64_t ;
typedef  scalar_t__ queue_entry_t ;
typedef  TYPE_3__* pv_hashed_entry_t ;
typedef  int pt_entry_t ;
typedef  size_t ppnum_t ;
typedef  TYPE_4__* pmap_t ;
typedef  scalar_t__ pmap_paddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_20__ {int /*<<< orphan*/  wired_mem; int /*<<< orphan*/  phys_footprint; int /*<<< orphan*/  alternate_accounting_compressed; int /*<<< orphan*/  alternate_accounting; int /*<<< orphan*/  internal_compressed; int /*<<< orphan*/  internal; int /*<<< orphan*/  phys_mem; } ;
struct TYPE_17__ {int resident_count; int external; int internal; int reusable; int compressed; int wired_count; } ;
struct TYPE_19__ {TYPE_2__ stats; } ;
struct TYPE_16__ {scalar_t__ next; } ;
struct TYPE_18__ {TYPE_1__ qlink; } ;

/* Variables and functions */
 int INTEL_EPT_MOD ; 
 int INTEL_EPT_REF ; 
 int INTEL_PTE_COMPRESSED_MASK ; 
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int*) ; 
 scalar_t__ PAGE_SIZE_64 ; 
 int PHYS_MODIFIED ; 
 int PHYS_REFERENCED ; 
 int PMAP_OPTIONS_REMOVE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PTE_COMPRESSED_ALT ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* PV_HASHED_ENTRY_NULL ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (int) ; 
 TYPE_4__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 size_t FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* pmap_phys_attributes ; 
 TYPE_3__* FUNC20 (TYPE_4__*,int /*<<< orphan*/ ,size_t*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 
 TYPE_5__ task_ledgers ; 

void
FUNC24(
	pmap_t			pmap,
	vm_map_offset_t		start_vaddr,
	pt_entry_t		*spte,
	pt_entry_t		*epte,
	int			options)
{
	pt_entry_t		*cpte;
	pv_hashed_entry_t       pvh_et = PV_HASHED_ENTRY_NULL;
	pv_hashed_entry_t       pvh_eh = PV_HASHED_ENTRY_NULL;
	pv_hashed_entry_t       pvh_e;
	int			pvh_cnt = 0;
	int			num_removed, num_unwired, num_found, num_invalid;
	int			stats_external, stats_internal, stats_reusable;
	uint64_t		stats_compressed;
	int			ledgers_internal, ledgers_alt_internal;
	uint64_t		ledgers_compressed, ledgers_alt_compressed;
	ppnum_t			pai;
	pmap_paddr_t		pa;
	vm_map_offset_t		vaddr;
	boolean_t		is_ept = FUNC14(pmap);
	boolean_t		was_altacct;

	num_removed = 0;
	num_unwired = 0;
	num_found   = 0;
	num_invalid = 0;
	stats_external = 0;
	stats_internal = 0;
	stats_reusable = 0;
	stats_compressed = 0;
	ledgers_internal = 0;
	ledgers_compressed = 0;
	ledgers_alt_internal = 0;
	ledgers_alt_compressed = 0;
	/* invalidate the PTEs first to "freeze" them */
	for (cpte = spte, vaddr = start_vaddr;
	     cpte < epte;
	     cpte++, vaddr += PAGE_SIZE_64) {
		pt_entry_t p = *cpte;

		pa = FUNC23(p);
		if (pa == 0) {
			if ((options & PMAP_OPTIONS_REMOVE) &&
			    (FUNC8(p))) {
				FUNC12(pmap != kernel_pmap);
				/* one less "compressed"... */
				stats_compressed++;
				ledgers_compressed++;
				if (p & PTE_COMPRESSED_ALT) {
					/* ... but it used to be "ALTACCT" */
					ledgers_alt_compressed++;
				}
				/* clear marker(s) */
				/* XXX probably does not need to be atomic! */
				FUNC22(cpte, INTEL_PTE_COMPRESSED_MASK, 0);
			}
			continue;
		}
		num_found++;

		if (FUNC15(p))
			num_unwired++;
		
		pai = FUNC17(pa);

		if (!FUNC1(pai)) {
			/*
			 *	Outside range of managed physical memory.
			 *	Just remove the mappings.
			 */
			FUNC21(cpte, 0);
			continue;
		}

		if ((p & FUNC9(is_ept)) == 0)
			num_invalid++;

		/* invalidate the PTE */
		FUNC22(cpte, FUNC9(is_ept), 0);
	}

	if (num_found == 0) {
		/* nothing was changed: we're done */
	        goto update_counts;
	}

	/* propagate the invalidates to other CPUs */

	FUNC7(pmap, start_vaddr, vaddr);

	for (cpte = spte, vaddr = start_vaddr;
	     cpte < epte;
	     cpte++, vaddr += PAGE_SIZE_64) {

		pa = FUNC23(*cpte);
		if (pa == 0) {
		check_pte_for_compressed_marker:
			/*
			 * This PTE could have been replaced with a
			 * "compressed" marker after our first "freeze"
			 * loop above, so check again.
			 */
			if ((options & PMAP_OPTIONS_REMOVE) &&
			    (FUNC8(*cpte))) {
				FUNC12(pmap != kernel_pmap);
				/* one less "compressed"... */
				stats_compressed++;
				ledgers_compressed++;
				if (*cpte & PTE_COMPRESSED_ALT) {
					/* ... but it used to be "ALTACCT" */
					ledgers_alt_compressed++;
				}
				FUNC21(cpte, 0);
			}
			continue;
		}

		pai = FUNC17(pa);

		FUNC3(pai);

		pa = FUNC23(*cpte);
		if (pa == 0) {
			FUNC11(pai);
			goto check_pte_for_compressed_marker;
		}

		/*
		 * Remove the mapping from the pvlist for this physical page.
		 */
		pvh_e = FUNC20(pmap, vaddr, (ppnum_t *) &pai, cpte, &was_altacct);

		num_removed++;
		/* update pmap stats */
		if (FUNC2(pai)) {
			stats_reusable++;
		} else if (FUNC0(pai)) {
			stats_internal++;
		} else {
			stats_external++;
		}
		/* update ledgers */
		if (was_altacct) {
			/* internal and alternate accounting */
			FUNC12(FUNC0(pai));
			ledgers_internal++;
			ledgers_alt_internal++;
		} else if (FUNC2(pai)) {
			/* internal but reusable */
			FUNC12(!was_altacct);
			FUNC12(FUNC0(pai));
		} else if (FUNC0(pai)) {
			/* internal */
			FUNC12(!was_altacct);
			FUNC12(!FUNC2(pai));
			ledgers_internal++;
		} else {
			/* not internal */
		}

		/*
	       	 * Get the modify and reference bits, then
	       	 * nuke the entry in the page table
	       	 */
		/* remember reference and change */
		if (!is_ept) {
			pmap_phys_attributes[pai] |=
				*cpte & (PHYS_MODIFIED | PHYS_REFERENCED);
		} else {
			pmap_phys_attributes[pai] |=
				FUNC13((*cpte & (INTEL_EPT_REF | INTEL_EPT_MOD))) & (PHYS_MODIFIED | PHYS_REFERENCED);
		}

		/* completely invalidate the PTE */
		FUNC21(cpte, 0);

		FUNC11(pai);

		if (pvh_e != PV_HASHED_ENTRY_NULL) {
			pvh_e->qlink.next = (queue_entry_t) pvh_eh;
			pvh_eh = pvh_e;

			if (pvh_et == PV_HASHED_ENTRY_NULL) {
				pvh_et = pvh_e;
			}
			pvh_cnt++;
		}
	} /* for loop */

	if (pvh_eh != PV_HASHED_ENTRY_NULL) {
		FUNC10(pvh_eh, pvh_et, pvh_cnt);
	}
update_counts:
	/*
	 *	Update the counts
	 */
#if TESTING
	if (pmap->stats.resident_count < num_removed)
	        panic("pmap_remove_range: resident_count");
#endif
	FUNC19(pmap, task_ledgers.phys_mem, FUNC16(num_removed));
	FUNC6((pmap->stats.resident_count >= num_removed,
			    "pmap=%p num_removed=%d stats.resident_count=%d",
			    pmap, num_removed, pmap->stats.resident_count));
	FUNC4(-num_removed,  &pmap->stats.resident_count);

	if (pmap != kernel_pmap) {
		FUNC6((pmap->stats.external >= stats_external,
				    "pmap=%p stats_external=%d stats.external=%d",
				    pmap, stats_external, pmap->stats.external));
		FUNC6((pmap->stats.internal >= stats_internal,
				    "pmap=%p stats_internal=%d stats.internal=%d",
				    pmap, stats_internal, pmap->stats.internal));
		FUNC6((pmap->stats.reusable >= stats_reusable,
				    "pmap=%p stats_reusable=%d stats.reusable=%d",
				    pmap, stats_reusable, pmap->stats.reusable));
		FUNC6((pmap->stats.compressed >= stats_compressed,
				    "pmap=%p stats_compressed=%lld, stats.compressed=%lld",
				    pmap, stats_compressed, pmap->stats.compressed));

		/* update pmap stats */
		if (stats_external) {
			FUNC4(-stats_external, &pmap->stats.external);
		}
		if (stats_internal) {
			FUNC4(-stats_internal, &pmap->stats.internal);
		}
		if (stats_reusable)
			FUNC4(-stats_reusable, &pmap->stats.reusable);
		if (stats_compressed)
			FUNC5(-stats_compressed, &pmap->stats.compressed);
		/* update ledgers */
		if (ledgers_internal) {
			FUNC19(pmap,
					  task_ledgers.internal,
					  FUNC16(ledgers_internal));
		}
		if (ledgers_compressed) {
			FUNC19(pmap,
					  task_ledgers.internal_compressed,
					  FUNC16(ledgers_compressed));
		}
		if (ledgers_alt_internal) {
			FUNC19(pmap,
					  task_ledgers.alternate_accounting,
					  FUNC16(ledgers_alt_internal));
		}
		if (ledgers_alt_compressed) {
			FUNC19(pmap,
					  task_ledgers.alternate_accounting_compressed,
					  FUNC16(ledgers_alt_compressed));
		}
		FUNC19(pmap,
				  task_ledgers.phys_footprint,
				  FUNC16((ledgers_internal -
						ledgers_alt_internal) +
					       (ledgers_compressed -
						ledgers_alt_compressed)));
	}

#if TESTING
	if (pmap->stats.wired_count < num_unwired)
	        panic("pmap_remove_range: wired_count");
#endif
	FUNC6((pmap->stats.wired_count >= num_unwired,
			    "pmap=%p num_unwired=%d stats.wired_count=%d",
			    pmap, num_unwired, pmap->stats.wired_count));
	FUNC4(-num_unwired,  &pmap->stats.wired_count);
	FUNC19(pmap, task_ledgers.wired_mem, FUNC16(num_unwired));

	return;
}