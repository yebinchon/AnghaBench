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
typedef  scalar_t__ vm_map_address_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
typedef  int /*<<< orphan*/  pmap_paddr_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_19__ {TYPE_1__* pt_cnt; } ;
struct TYPE_18__ {int /*<<< orphan*/  phys_footprint; int /*<<< orphan*/  internal_compressed; int /*<<< orphan*/  alternate_accounting_compressed; int /*<<< orphan*/  alternate_accounting; int /*<<< orphan*/  internal; int /*<<< orphan*/  wired_mem; int /*<<< orphan*/  phys_mem; } ;
struct TYPE_16__ {int internal; int reusable; int external; int compressed; int /*<<< orphan*/  wired_count; int /*<<< orphan*/  resident_count; } ;
struct TYPE_17__ {int pmap_pid; char* pmap_procname; TYPE_2__ stats; int /*<<< orphan*/  pmap_stats_assert; } ;
struct TYPE_15__ {int /*<<< orphan*/  refcnt; } ;
typedef  int SInt32 ;
typedef  int /*<<< orphan*/  SInt16 ;

/* Variables and functions */
 int ARM_PGBYTES ; 
 int ARM_PTE_COMPRESSED_ALT ; 
 scalar_t__ FUNC0 (int) ; 
 int ARM_PTE_TYPE_FAULT ; 
 size_t FUNC1 (int*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int PMAP_OPTIONS_REMOVE ; 
 int /*<<< orphan*/  FUNC8 (int,TYPE_3__*,char*,TYPE_3__*,int,int,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 TYPE_3__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 scalar_t__ pgtrace_enabled ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int*,int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  pmap_stats_assert ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,TYPE_3__*,int,int*,int*,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 TYPE_5__* FUNC23 (int*) ; 
 scalar_t__ FUNC24 (int*) ; 
 TYPE_4__ task_ledgers ; 

__attribute__((used)) static int
FUNC25(
	pmap_t pmap,
	vm_map_address_t va,
	pt_entry_t *bpte,
	pt_entry_t *epte,
	uint32_t *rmv_cnt,
	int options)
{
	pt_entry_t     *cpte;
	int             num_removed, num_unwired;
	int             num_pte_changed;
	int             pai = 0;
	pmap_paddr_t    pa;
	int		num_external, num_internal, num_reusable;
	int		num_alt_internal;
	uint64_t	num_compressed, num_alt_compressed;

	FUNC7(pmap);

	num_removed = 0;
	num_unwired = 0;
	num_pte_changed = 0;
	num_external = 0;
	num_internal = 0;
	num_reusable = 0;
	num_compressed = 0;
	num_alt_internal = 0;
	num_alt_compressed = 0;

	for (cpte = bpte; cpte < epte;
	     cpte += PAGE_SIZE/ARM_PGBYTES, va += PAGE_SIZE) {
		pt_entry_t      spte;
		boolean_t	managed=FALSE;

		spte = *cpte;

#if CONFIG_PGTRACE
		if (pgtrace_enabled)
			pmap_pgtrace_remove_clone(pmap, pte_to_pa(spte), va);
#endif

		while (!managed) {
			if (pmap != kernel_pmap &&
			    (options & PMAP_OPTIONS_REMOVE) &&
			    (FUNC0(spte))) {
				/*
				 * "pmap" must be locked at this point,
				 * so this should not race with another
				 * pmap_remove_range() or pmap_enter().
				 */

				/* one less "compressed"... */
				num_compressed++;
				if (spte & ARM_PTE_COMPRESSED_ALT) {
					/* ... but it used to be "ALTACCT" */
					num_alt_compressed++;
				}

				/* clear marker */
				FUNC10(cpte, ARM_PTE_TYPE_FAULT);
				/*
				 * "refcnt" also accounts for
				 * our "compressed" markers,
				 * so let's update it here.
				 */
				if (FUNC5(-1, (SInt16 *) &(FUNC23(cpte)->pt_cnt[FUNC1(cpte)].refcnt)) <= 0)
					FUNC15("pmap_remove_range_options: over-release of ptdp %p for pte %p\n", FUNC23(cpte), cpte);
				spte = *cpte;
			}
			/*
			 * It may be possible for the pte to transition from managed
			 * to unmanaged in this timeframe; for now, elide the assert.
			 * We should break out as a consequence of checking pa_valid.
			 */
			//assert(!ARM_PTE_IS_COMPRESSED(spte));
			pa = FUNC22(spte);
			if (!FUNC14(pa)) {
				break;
			}
			pai = (int)FUNC13(pa);
			FUNC3(pai);
			spte = *cpte;
			pa = FUNC22(spte);
			if (pai == (int)FUNC13(pa)) {
				managed =TRUE;
				break; // Leave pai locked as we will unlock it after we free the PV entry
			}
			FUNC9(pai);
		}

		if (FUNC0(*cpte)) {
			/*
			 * There used to be a valid mapping here but it
			 * has already been removed when the page was
			 * sent to the VM compressor, so nothing left to
			 * remove now...
			 */
			continue;
		}

		/* remove the translation, do not flush the TLB */
		if (*cpte != ARM_PTE_TYPE_FAULT) {
			FUNC11(!FUNC0(*cpte));
#if MACH_ASSERT
			if (managed && (pmap != kernel_pmap) && (ptep_get_va(cpte) != va)) {
				panic("pmap_remove_range_options(): cpte=%p ptd=%p pte=0x%llx va=0x%llx\n",
				      cpte, ptep_get_ptd(cpte), (uint64_t)*cpte, (uint64_t)va);
			}
#endif
			FUNC10(cpte, ARM_PTE_TYPE_FAULT);
			num_pte_changed++;
		}

		if ((spte != ARM_PTE_TYPE_FAULT) &&
		    (pmap != kernel_pmap)) {
			FUNC11(!FUNC0(spte));
			if (FUNC5(-1, (SInt16 *) &(FUNC23(cpte)->pt_cnt[FUNC1(cpte)].refcnt)) <= 0)
				FUNC15("pmap_remove_range_options: over-release of ptdp %p for pte %p\n", FUNC23(cpte), cpte);
			if(rmv_cnt) (*rmv_cnt)++;
		}

		if (FUNC20(spte)) {
			FUNC21(cpte, 0);
			num_unwired++;
		}
		/*
		 * if not managed, we're done
		 */
		if (!managed)
			continue;
		/*
		 * find and remove the mapping from the chain for this
		 * physical address.
		 */

		FUNC18(pmap, cpte, pai, &num_internal, &num_alt_internal, &num_reusable, &num_external);

		FUNC9(pai);
		num_removed++;
	}

	/*
	 *	Update the counts
	 */
	FUNC4(-num_removed, (SInt32 *) &pmap->stats.resident_count);
	FUNC16(pmap, task_ledgers.phys_mem, FUNC12(num_removed));

	if (pmap != kernel_pmap) {
		/* sanity checks... */
#if MACH_ASSERT
		if (pmap->stats.internal < num_internal) {
			if ((! pmap_stats_assert ||
			     ! pmap->pmap_stats_assert)) {
				printf("%d[%s] pmap_remove_range_options(%p,0x%llx,%p,%p,0x%x): num_internal=%d num_removed=%d num_unwired=%d num_external=%d num_reusable=%d num_compressed=%lld num_alt_internal=%d num_alt_compressed=%lld num_pte_changed=%d stats.internal=%d stats.reusable=%d\n",
				       pmap->pmap_pid,
				       pmap->pmap_procname,
				       pmap,
				       (uint64_t) va,
				       bpte,
				       epte,
				       options,
				       num_internal,
				       num_removed,
				       num_unwired,
				       num_external,
				       num_reusable,
				       num_compressed,
				       num_alt_internal,
				       num_alt_compressed,
				       num_pte_changed,
				       pmap->stats.internal,
				       pmap->stats.reusable);
			} else {
				panic("%d[%s] pmap_remove_range_options(%p,0x%llx,%p,%p,0x%x): num_internal=%d num_removed=%d num_unwired=%d num_external=%d num_reusable=%d num_compressed=%lld num_alt_internal=%d num_alt_compressed=%lld num_pte_changed=%d stats.internal=%d stats.reusable=%d",
				      pmap->pmap_pid,
				      pmap->pmap_procname,
				      pmap,
				      (uint64_t) va,
				      bpte,
				      epte,
				      options,
				      num_internal,
				      num_removed,
				      num_unwired,
				      num_external,
				      num_reusable,
				      num_compressed,
				      num_alt_internal,
				      num_alt_compressed,
				      num_pte_changed,
				      pmap->stats.internal,
				      pmap->stats.reusable);
			}
		}
#endif /* MACH_ASSERT */
		FUNC8(pmap->stats.external >= num_external,
				   pmap,
				   "pmap=%p num_external=%d stats.external=%d",
				   pmap, num_external, pmap->stats.external);
		FUNC8(pmap->stats.internal >= num_internal,
				   pmap,
				   "pmap=%p num_internal=%d stats.internal=%d num_reusable=%d stats.reusable=%d",
				   pmap,
				   num_internal, pmap->stats.internal,
				   num_reusable, pmap->stats.reusable);
		FUNC8(pmap->stats.reusable >= num_reusable,
				   pmap,
				   "pmap=%p num_internal=%d stats.internal=%d num_reusable=%d stats.reusable=%d",
				   pmap,
				   num_internal, pmap->stats.internal,
				   num_reusable, pmap->stats.reusable);
		FUNC8(pmap->stats.compressed >= num_compressed,
				   pmap,
				   "pmap=%p num_compressed=%lld num_alt_compressed=%lld stats.compressed=%lld",
				   pmap, num_compressed, num_alt_compressed,
				   pmap->stats.compressed);

		/* update pmap stats... */
		FUNC4(-num_unwired, (SInt32 *) &pmap->stats.wired_count);
		if (num_external)
			FUNC4(-num_external, &pmap->stats.external);
		if (num_internal)
			FUNC4(-num_internal, &pmap->stats.internal);
		if (num_reusable)
			FUNC4(-num_reusable, &pmap->stats.reusable);
		if (num_compressed)
			FUNC6(-num_compressed, &pmap->stats.compressed);
		/* ... and ledgers */
		FUNC16(pmap, task_ledgers.wired_mem, FUNC12(num_unwired));
		FUNC16(pmap, task_ledgers.internal, FUNC12(num_internal));
		FUNC16(pmap, task_ledgers.alternate_accounting, FUNC12(num_alt_internal));
		FUNC16(pmap, task_ledgers.alternate_accounting_compressed, FUNC12(num_alt_compressed));
		FUNC16(pmap, task_ledgers.internal_compressed, FUNC12(num_compressed));
		/* make needed adjustments to phys_footprint */
		FUNC16(pmap, task_ledgers.phys_footprint,
				  FUNC12((num_internal -
						num_alt_internal) +
					       (num_compressed -
						num_alt_compressed)));
	}

	/* flush the ptable entries we have written */
	if (num_pte_changed > 0)
		FUNC2(bpte, epte);

	return num_pte_changed;
}