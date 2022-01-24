#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* processor_set_t ;
struct TYPE_5__ {int count; } ;
struct TYPE_6__ {int load_average; TYPE_1__ pset_runq; int /*<<< orphan*/ * cpu_state_map; } ;

/* Variables and functions */
 size_t PROCESSOR_RUNNING ; 
 int PSET_LOAD_NUMERATOR_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 

void
FUNC2(processor_set_t pset)
{
	int load = ((FUNC0(pset->cpu_state_map[PROCESSOR_RUNNING]) + pset->pset_runq.count + FUNC1(pset)) << PSET_LOAD_NUMERATOR_SHIFT);
	int new_load_average = (pset->load_average + load) >> 1;

	pset->load_average = new_load_average;

#if (DEVELOPMENT || DEBUG)
#endif
}