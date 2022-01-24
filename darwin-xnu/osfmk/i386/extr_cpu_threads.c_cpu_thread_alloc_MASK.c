#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct TYPE_19__ {struct TYPE_19__* next; } ;
typedef  TYPE_1__ x86_pkg_t ;
typedef  int /*<<< orphan*/  x86_die_t ;
struct TYPE_20__ {int /*<<< orphan*/  package; int /*<<< orphan*/  die; } ;
typedef  TYPE_2__ x86_core_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_21__ {int /*<<< orphan*/  lcpu; int /*<<< orphan*/  cpu_threadtype; int /*<<< orphan*/  cpu_phys_number; } ;
typedef  TYPE_3__ cpu_data_t ;
struct TYPE_18__ {int physical_cpu_max; int logical_cpu_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_THREADTYPE_INTEL_HTT ; 
 int /*<<< orphan*/  CPU_THREADTYPE_NONE ; 
 TYPE_3__* FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_16__ machine_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  topoParmsInited ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int) ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC19 (int) ; 
 TYPE_1__* FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 TYPE_1__* x86_pkgs ; 
 int /*<<< orphan*/  x86_topo_lock ; 

void *
FUNC22(int cpu)
{
    x86_core_t	*core		= NULL;
    x86_die_t	*die		= NULL;
    x86_pkg_t	*pkg		= NULL;
    cpu_data_t	*cpup;
    uint32_t	phys_cpu;

    /*
     * Only allow one to manipulate the topology at a time.
     */
    FUNC3(&x86_topo_lock);

    /*
     * Make sure all of the topology parameters have been initialized.
     */
    if (!topoParmsInited)
	FUNC2();

    cpup = FUNC0(cpu);

    phys_cpu = cpup->cpu_phys_number;

    FUNC15(cpu);

    /*
     * Assume that all cpus have the same features.
     */
    if (FUNC1()) {
	cpup->cpu_threadtype = CPU_THREADTYPE_INTEL_HTT;
    } else {
	cpup->cpu_threadtype = CPU_THREADTYPE_NONE;
    }

    /*
     * Get the package that the logical CPU is in.
     */
    do {
	pkg = FUNC20(cpu);
	if (pkg == NULL) {
	    /*
	     * Package structure hasn't been created yet, do it now.
	     */
	    FUNC4(&x86_topo_lock);
	    pkg = FUNC19(cpu);
	    FUNC3(&x86_topo_lock);
	    if (FUNC20(cpu) != NULL) {
		FUNC21(pkg);
		continue;
	    }
	    
	    /*
	     * Add the new package to the global list of packages.
	     */
	    pkg->next = x86_pkgs;
	    x86_pkgs = pkg;
	}
    } while (pkg == NULL);

    /*
     * Get the die that the logical CPU is in.
     */
    do {
	die = FUNC12(cpu);
	if (die == NULL) {
	    /*
	     * Die structure hasn't been created yet, do it now.
	     */
	    FUNC4(&x86_topo_lock);
	    die = FUNC11(cpu);
	    FUNC3(&x86_topo_lock);
	    if (FUNC12(cpu) != NULL) {
		FUNC13(die);
		continue;
	    }

	    /*
	     * Add the die to the package.
	     */
	    FUNC17(pkg, die);
	}
    } while (die == NULL);

    /*
     * Get the core for this logical CPU.
     */
    do {
	core = FUNC7(cpu);
	if (core == NULL) {
	    /*
	     * Allocate the core structure now.
	     */
	    FUNC4(&x86_topo_lock);
	    core = FUNC6(cpu);
	    FUNC3(&x86_topo_lock);
	    if (FUNC7(cpu) != NULL) {
		FUNC8(core);
		continue;
	    }

	    /*
	     * Add the core to the die & package.
	     */
	    FUNC9(die, core);
	    FUNC16(pkg, core);
	    machine_info.physical_cpu_max += 1;
	}
    } while (core == NULL);

    
    /*
     * Done manipulating the topology, so others can get in.
     */
    machine_info.logical_cpu_max += 1;
    FUNC4(&x86_topo_lock);

    /*
     * Add the logical CPU to the other topology structures.
     */
    FUNC5(core, &cpup->lcpu);
    FUNC10(core->die, &cpup->lcpu);
    FUNC18(core->package, &cpup->lcpu);
    FUNC14(&cpup->lcpu);

    return (void *) core;
}