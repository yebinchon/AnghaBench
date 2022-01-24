#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ lnum; TYPE_1__* core; int /*<<< orphan*/  cpu_num; TYPE_3__** caches; } ;
typedef  TYPE_2__ x86_lcpu_t ;
struct TYPE_16__ {scalar_t__ type; } ;
typedef  TYPE_3__ x86_cpu_cache_t ;
struct TYPE_17__ {scalar_t__ pset; int /*<<< orphan*/  num; TYPE_3__* cache; struct TYPE_17__* next; } ;
typedef  TYPE_4__ x86_affinity_set_t ;
typedef  int /*<<< orphan*/ * processor_t ;
struct TYPE_18__ {scalar_t__ cpu_number; int /*<<< orphan*/ * cpu_processor; int /*<<< orphan*/  cpu_phys_number; int /*<<< orphan*/  lcpu; } ;
typedef  TYPE_5__ cpu_data_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_20__ {int physical_cpu; int logical_cpu; } ;
struct TYPE_19__ {int LLCDepth; int /*<<< orphan*/  stable; } ;
struct TYPE_14__ {int num_lcpus; } ;

/* Variables and functions */
 scalar_t__ CPU_CACHE_TYPE_UNIF ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ PROCESSOR_SET_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * cpu_data_ptr ; 
 TYPE_5__* FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__* FUNC5 (int) ; 
 TYPE_4__* FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lapicid_cmp ; 
 TYPE_8__ machine_info ; 
 int master_cpu ; 
 int /*<<< orphan*/  master_processor ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (void*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_7__ topoParms ; 
 scalar_t__ topo_dbg ; 
 TYPE_4__* x86_affinities ; 
 int /*<<< orphan*/  x86_affinity_count ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 

void
FUNC21(int ncpus)
{
	int		i;
	boolean_t	istate;
	processor_t		lprim = NULL;

	FUNC1(machine_info.physical_cpu == 1);
	FUNC1(machine_info.logical_cpu == 1);
	FUNC1(master_cpu == 0);
	FUNC1(FUNC3() == 0);
	FUNC1(FUNC2(0)->cpu_number == 0);

	/* Lights out for this */
	istate = FUNC10(FALSE);

	if (topo_dbg) {
		FUNC0("cpu_topology_start() %d cpu%s registered\n",
			ncpus, (ncpus > 1) ? "s" : "");
		for (i = 0; i < ncpus; i++) {
			cpu_data_t	*cpup = FUNC2(i);
			FUNC0("\tcpu_data[%d]:%p local apic 0x%x\n",
				i, (void *) cpup, cpup->cpu_phys_number);
		}
	}

	/*
	 * Re-order the cpu_data_ptr vector sorting by physical id.
	 * Skip the boot processor, it's required to be correct.
	 */
	if (ncpus > 1) {
		FUNC18((void *) &cpu_data_ptr[1],
			ncpus - 1,
			sizeof(cpu_data_t *),
			lapicid_cmp);
	}
	if (topo_dbg) {
		FUNC0("cpu_topology_start() after sorting:\n");
		for (i = 0; i < ncpus; i++) {
			cpu_data_t	*cpup = FUNC2(i);
			FUNC0("\tcpu_data[%d]:%p local apic 0x%x\n",
				i, (void *) cpup, cpup->cpu_phys_number);
		}
	}

	/*
	 * Finalize logical numbers and map kept by the lapic code.
	 */
	for (i = 0; i < ncpus; i++) {
		cpu_data_t	*cpup = FUNC2(i);

		if (cpup->cpu_number != i) {
			FUNC8("cpu_datap(%d):%p local apic id 0x%x "
				"remapped from %d\n",
				i, cpup, cpup->cpu_phys_number,
				cpup->cpu_number);
		}
		cpup->cpu_number = i;
		FUNC9(cpup->cpu_phys_number, i);
		FUNC19(&cpup->lcpu, cpup->cpu_phys_number, i);
	}

	FUNC4(ncpus);
	FUNC20();

	FUNC10(istate);
	FUNC0("cpu_topology_start() LLC is L%d\n", topoParms.LLCDepth + 1);

	/*
	 * Let the CPU Power Management know that the topology is stable.
	 */
	topoParms.stable = TRUE;
	FUNC12();

	/*
	 * Iterate over all logical cpus finding or creating the affinity set
	 * for their LLC cache. Each affinity set possesses a processor set
	 * into which each logical processor is added.
	 */
	FUNC0("cpu_topology_start() creating affinity sets:\n");
	for (i = 0; i < ncpus; i++) {
		cpu_data_t		*cpup = FUNC2(i);
		x86_lcpu_t		*lcpup = FUNC5(i);
		x86_cpu_cache_t		*LLC_cachep;
		x86_affinity_set_t	*aset;

		LLC_cachep = lcpup->caches[topoParms.LLCDepth];
		FUNC1(LLC_cachep->type == CPU_CACHE_TYPE_UNIF);
		aset = FUNC6(LLC_cachep); 
		if (aset == NULL) {
			aset = (x86_affinity_set_t *) FUNC7(sizeof(*aset));
			if (aset == NULL)
				FUNC11("cpu_topology_start() failed aset alloc");
			aset->next = x86_affinities;
			x86_affinities = aset;
			aset->num = x86_affinity_count++;
			aset->cache = LLC_cachep;
			aset->pset = (i == master_cpu) ?
					FUNC14(master_processor) :
					FUNC16(FUNC17());
			if (aset->pset == PROCESSOR_SET_NULL)
				FUNC11("cpu_topology_start: pset_create");
			FUNC0("\tnew set %p(%d) pset %p for cache %p\n",
				aset, aset->num, aset->pset, aset->cache);
		}

		FUNC0("\tprocessor_init set %p(%d) lcpup %p(%d) cpu %p processor %p\n",
			aset, aset->num, lcpup, lcpup->cpu_num, cpup, cpup->cpu_processor);

		if (i != master_cpu)
			FUNC13(cpup->cpu_processor, i, aset->pset);

		if (lcpup->core->num_lcpus > 1) {
			if (lcpup->lnum == 0)
				lprim = cpup->cpu_processor;

			FUNC15(cpup->cpu_processor, lprim);
		}
	}
}