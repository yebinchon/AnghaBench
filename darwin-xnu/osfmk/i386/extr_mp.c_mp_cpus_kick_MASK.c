#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int cpumask_t ;
typedef  scalar_t__ cpu_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ real_ncpus ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x86_topo_lock ; 

void
FUNC8(cpumask_t cpus)
{
	cpu_t		cpu;
	boolean_t	intrs_enabled = FALSE;

	intrs_enabled = FUNC5(FALSE);
	FUNC6(&x86_topo_lock);

	for (cpu = 0; cpu < (cpu_t) real_ncpus; cpu++) {
		if ((cpu == (cpu_t) FUNC2())
			|| ((FUNC3(cpu) & cpus) == 0)
			|| !FUNC1(cpu))
		{
				continue;
		}

		FUNC4(cpu, FUNC0(KICK));
	}

	FUNC7(&x86_topo_lock);
	FUNC5(intrs_enabled);
}