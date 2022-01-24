#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  event_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {unsigned int max_cpus; unsigned int physical_cpu_max; unsigned int logical_cpu_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_CPUS_SET ; 
 scalar_t__ MAX_CPUS_WAIT ; 
 TYPE_1__ machine_info ; 
 scalar_t__ max_cpus_initialized ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(unsigned int max_cpus)
{
	boolean_t       current_state;

	current_state = FUNC0(FALSE);
	if (max_cpus_initialized != MAX_CPUS_SET) {
		machine_info.max_cpus = max_cpus;
		machine_info.physical_cpu_max = max_cpus;
		machine_info.logical_cpu_max = max_cpus;
		if (max_cpus_initialized == MAX_CPUS_WAIT)
			FUNC1((event_t) & max_cpus_initialized);
		max_cpus_initialized = MAX_CPUS_SET;
	}
	(void) FUNC0(current_state);
}