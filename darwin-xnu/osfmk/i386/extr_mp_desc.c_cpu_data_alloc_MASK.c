#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  scalar_t__ thread_t ;
struct real_descriptor {int dummy; } ;
struct cpu_desc_table {int dummy; } ;
struct TYPE_10__ {int cpu_number; int cpu_int_stack_top; int /*<<< orphan*/ * cpu_ldtp; struct cpu_desc_table* cpu_desc_tablep; int /*<<< orphan*/ * cpu_nanotime; void* cpu_NMI_acknowledged; scalar_t__ cpu_active_thread; int /*<<< orphan*/ * cd_shadow; struct TYPE_10__* cpu_this; int /*<<< orphan*/  cpu_pmap; int /*<<< orphan*/ * cpu_processor; } ;
typedef  TYPE_1__ cpu_data_t ;
struct TYPE_11__ {int /*<<< orphan*/ * pcldts; } ;
typedef  TYPE_2__ cldt_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* FALSE ; 
 int INTSTACK_SIZE ; 
 int KERN_SUCCESS ; 
 int LDTSZ ; 
 int MAX_CPUS ; 
 void* TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_CPU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/ * cpshadows ; 
 TYPE_1__** cpu_data_ptr ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 int FUNC4 (int,int) ; 
 TYPE_2__* dyn_ldts ; 
 int /*<<< orphan*/  kernel_map ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,TYPE_1__*,struct cpu_desc_table*,int /*<<< orphan*/ *,long,long) ; 
 int ldt_alias_offset ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  ncpus_lock ; 
 int /*<<< orphan*/  pal_rtc_nanotime_info ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int real_ncpus ; 
 int FUNC11 (int) ; 
 TYPE_1__* scdatas ; 
 int /*<<< orphan*/ * scdtables ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

cpu_data_t *
FUNC15(boolean_t is_boot_cpu)
{
	int		ret;
	cpu_data_t	*cdp;

	if (is_boot_cpu) {
		FUNC0(real_ncpus == 1);
		cdp = FUNC2(0);
		if (cdp->cpu_processor == NULL) {
			FUNC13(&ncpus_lock, 0);
			cdp->cpu_processor = FUNC3(TRUE);
#if NCOPY_WINDOWS > 0
			cdp->cpu_pmap = pmap_cpu_alloc(TRUE);
#endif
		}
		return cdp;
	}

	boolean_t do_ldt_alloc = FALSE;
	FUNC12(&ncpus_lock);
	int cnum = real_ncpus;
	real_ncpus++;
	if (dyn_ldts == NULL) {
		do_ldt_alloc = TRUE;
	}
	FUNC14(&ncpus_lock);

	/*
	 * Allocate per-cpu data:
	 */

	cdp = &scdatas[cnum];
	FUNC1((void*) cdp, sizeof(cpu_data_t));
	cdp->cpu_this = cdp;
	cdp->cpu_number = cnum;
	cdp->cd_shadow = &cpshadows[cnum];
	/*
	 * Allocate interrupt stack:
	 */
	ret = FUNC5(kernel_map, 
			 (vm_offset_t *) &cdp->cpu_int_stack_top,
			 INTSTACK_SIZE, VM_KERN_MEMORY_CPU);
	if (ret != KERN_SUCCESS) {
		FUNC9("cpu_data_alloc() int stack failed, ret=%d\n", ret);
	}
	FUNC1((void*) cdp->cpu_int_stack_top, INTSTACK_SIZE);
	cdp->cpu_int_stack_top += INTSTACK_SIZE;

	/*
	 * Allocate descriptor table:
	 */

	cdp->cpu_desc_tablep = (struct cpu_desc_table *) &scdtables[cnum];
	/*
	 * Allocate LDT
	 */
	if (do_ldt_alloc) {
		boolean_t do_ldt_free = FALSE;
		vm_offset_t sldtoffset = 0;
		/*
		 * Allocate LDT
		 */
		vm_offset_t ldtalloc = 0, ldtallocsz = FUNC11(MAX_CPUS * sizeof(struct real_descriptor) * LDTSZ);
		ret = FUNC5(kernel_map, (vm_offset_t *) &ldtalloc, ldtallocsz, VM_KERN_MEMORY_CPU);
		if (ret != KERN_SUCCESS) {
			FUNC9("cpu_data_alloc() ldt failed, kmem_alloc=%d\n", ret);
		}

		FUNC12(&ncpus_lock);
		if (dyn_ldts == NULL) {
			dyn_ldts = (cldt_t *)ldtalloc;
		} else {
			do_ldt_free = TRUE;
		}
		FUNC14(&ncpus_lock);

		if (do_ldt_free) {
			FUNC6(kernel_map, ldtalloc, ldtallocsz);
		} else {
			/* CPU registration and startup are expected to execute
			 * serially, as invoked by the platform driver.
			 * Create trampoline alias of LDT region.
			 */
			sldtoffset = FUNC4(ldtalloc, ldtallocsz);
			ldt_alias_offset = sldtoffset;
		}
	}
	cdp->cpu_ldtp = &dyn_ldts[cnum].pcldts[0];

#if CONFIG_MCA
	/* Machine-check shadow register allocation. */
	mca_cpu_alloc(cdp);
#endif

	/*
	 * Before this cpu has been assigned a real thread context,
	 * we give it a fake, unique, non-zero thread id which the locking
	 * primitives use as their lock value.
	 * Note that this does not apply to the boot processor, cpu 0, which
	 * transitions to a thread context well before other processors are
	 * started.
	 */
	cdp->cpu_active_thread = (thread_t) (uintptr_t) cdp->cpu_number;
	cdp->cpu_NMI_acknowledged = TRUE;
	cdp->cpu_nanotime = &pal_rtc_nanotime_info;

	FUNC7("cpu_data_alloc(%d) %p desc_table: %p "
		"ldt: %p "
		"int_stack: 0x%lx-0x%lx\n",
		cdp->cpu_number, cdp, cdp->cpu_desc_tablep, cdp->cpu_ldtp,
		(long)(cdp->cpu_int_stack_top - INTSTACK_SIZE), (long)(cdp->cpu_int_stack_top));
	cpu_data_ptr[cnum] = cdp;

	return cdp;

}