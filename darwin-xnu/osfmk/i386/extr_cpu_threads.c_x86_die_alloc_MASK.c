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
struct TYPE_8__ {int pdie_num; int /*<<< orphan*/  flags; int /*<<< orphan*/  ldie_num; struct TYPE_8__* next_in_pkg; } ;
typedef  TYPE_1__ x86_die_t ;
struct TYPE_9__ {int cpu_phys_number; } ;
typedef  TYPE_2__ cpu_data_t ;
struct TYPE_10__ {int nPThreadsPerDie; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86DIE_FL_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (long*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 TYPE_2__* FUNC2 (int) ; 
 TYPE_1__* free_dies ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_dies ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__ topoParms ; 
 int /*<<< orphan*/  x86_topo_lock ; 

__attribute__((used)) static x86_die_t *
FUNC7(int cpu)
{
    x86_die_t	*die;
    cpu_data_t	*cpup;

    cpup = FUNC2(cpu);

    FUNC4(&x86_topo_lock);
    if (free_dies != NULL) {
	die = free_dies;
	free_dies = die->next_in_pkg;
	die->next_in_pkg = NULL;
	FUNC6(&x86_topo_lock);
    } else {
	FUNC6(&x86_topo_lock);
	die = FUNC3(sizeof(x86_die_t));
	if (die == NULL)
	    FUNC5("x86_die_alloc() kalloc of x86_die_t failed!\n");
    }

    FUNC1((void *) die, sizeof(x86_die_t));

    die->pdie_num = cpup->cpu_phys_number / topoParms.nPThreadsPerDie;

    die->ldie_num = num_dies;
    FUNC0((long *) &num_dies, 1);

    die->flags = X86DIE_FL_PRESENT;
    return(die);
}