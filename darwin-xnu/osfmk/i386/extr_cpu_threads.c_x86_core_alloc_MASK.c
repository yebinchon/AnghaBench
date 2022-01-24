#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int pcore_num; int lcore_num; int flags; struct TYPE_8__* next_in_die; } ;
typedef  TYPE_1__ x86_core_t ;
struct TYPE_9__ {int cpu_phys_number; } ;
typedef  TYPE_2__ cpu_data_t ;
struct TYPE_10__ {int nPThreadsPerCore; int nPCoresPerPackage; } ;

/* Variables and functions */
 int X86CORE_FL_HALTED ; 
 int X86CORE_FL_IDLE ; 
 int X86CORE_FL_PRESENT ; 
 int X86CORE_FL_READY ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 TYPE_2__* FUNC1 (int) ; 
 TYPE_1__* free_cores ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__ topoParms ; 
 int /*<<< orphan*/  x86_topo_lock ; 

__attribute__((used)) static x86_core_t *
FUNC6(int cpu)
{
    x86_core_t	*core;
    cpu_data_t	*cpup;

    cpup = FUNC1(cpu);

    FUNC3(&x86_topo_lock);
    if (free_cores != NULL) {
	core = free_cores;
	free_cores = core->next_in_die;
	core->next_in_die = NULL;
	FUNC5(&x86_topo_lock);
    } else {
	FUNC5(&x86_topo_lock);
	core = FUNC2(sizeof(x86_core_t));
	if (core == NULL)
	    FUNC4("x86_core_alloc() kalloc of x86_core_t failed!\n");
    }

    FUNC0((void *) core, sizeof(x86_core_t));

    core->pcore_num = cpup->cpu_phys_number / topoParms.nPThreadsPerCore;
    core->lcore_num = core->pcore_num % topoParms.nPCoresPerPackage;

    core->flags = X86CORE_FL_PRESENT | X86CORE_FL_READY
	        | X86CORE_FL_HALTED | X86CORE_FL_IDLE;

    return(core);
}