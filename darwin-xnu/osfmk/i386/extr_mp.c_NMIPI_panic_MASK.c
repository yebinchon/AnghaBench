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
typedef  scalar_t__ uint64_t ;
typedef  int cpumask_t ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_NMI_acknowledged; } ;
typedef  int /*<<< orphan*/  NMI_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ LockTimeOut ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NMI_panic_reason ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 unsigned int real_ncpus ; 

void
FUNC5(cpumask_t cpu_mask, NMI_reason_t why) {
	unsigned int cpu;
	cpumask_t cpu_bit;
	uint64_t deadline;

	FUNC0(TRUE);
	NMI_panic_reason = why;

	for (cpu = 0, cpu_bit = 1; cpu < real_ncpus; cpu++, cpu_bit <<= 1) {
		if ((cpu_mask & cpu_bit) == 0)
			continue;
		FUNC2(cpu)->cpu_NMI_acknowledged = FALSE;
		FUNC1(cpu);
	}

	/* Wait (only so long) for NMi'ed cpus to respond */
	deadline = FUNC4() + LockTimeOut;
	for (cpu = 0, cpu_bit = 1; cpu < real_ncpus; cpu++, cpu_bit <<= 1) {
		if ((cpu_mask & cpu_bit) == 0)
			continue;
		while (!FUNC2(cpu)->cpu_NMI_acknowledged &&
			FUNC4() < deadline) {
			FUNC3();
		}
	}
}