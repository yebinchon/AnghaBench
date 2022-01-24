#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ thread_t ;
typedef  int /*<<< orphan*/  processor_t ;
typedef  TYPE_1__* processor_set_t ;
struct TYPE_9__ {scalar_t__ count; } ;
struct TYPE_8__ {int* cpu_state_map; } ;

/* Variables and functions */
 size_t PROCESSOR_DISPATCHING ; 
 size_t PROCESSOR_RUNNING ; 
 scalar_t__ THREAD_NULL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * processor_array ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static thread_t
FUNC7(processor_set_t pset)
{
	processor_set_t nset, cset = pset;
	processor_t     processor;
	thread_t        thread;

	do {
		uint64_t active_map = (pset->cpu_state_map[PROCESSOR_RUNNING] |
				       pset->cpu_state_map[PROCESSOR_DISPATCHING]);
		for (int cpuid = FUNC0(active_map); cpuid >= 0; cpuid = FUNC1(active_map, cpuid)) {
			processor = processor_array[cpuid];
			if (FUNC5(processor)->count > 0) {
				thread = FUNC6(processor);
				if (thread != THREAD_NULL) {
					FUNC4(cset);

					return (thread);
				}
			}
		}

		nset = FUNC2(cset);

		if (nset != pset) {
			FUNC4(cset);

			cset = nset;
			FUNC3(cset);
		}
	} while (nset != pset);

	FUNC4(cset);

	return (THREAD_NULL);
}