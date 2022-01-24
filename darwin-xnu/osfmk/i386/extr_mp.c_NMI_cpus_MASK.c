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
typedef  int uint64_t ;
typedef  void* boolean_t ;
struct TYPE_2__ {void* cpu_NMI_acknowledged; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 int FUNC9 () ; 
 unsigned int real_ncpus ; 

void
FUNC10(void)
{
	unsigned int	cpu;
	boolean_t	intrs_enabled;
	uint64_t	tsc_timeout;

	intrs_enabled = FUNC7(FALSE);
	FUNC0(TRUE);
	for (cpu = 0; cpu < real_ncpus; cpu++) {
		if (!FUNC3(cpu))
			continue;
		FUNC2(cpu)->cpu_NMI_acknowledged = FALSE;
		FUNC1(cpu);
		tsc_timeout = !FUNC6() ?
				FUNC9() + (1000 * 1000 * 1000 * 10ULL) :
				~0ULL;
		while (!FUNC2(cpu)->cpu_NMI_acknowledged) {
			FUNC5();
			FUNC4();
			if (FUNC9() > tsc_timeout)
				FUNC8("NMI_cpus() timeout cpu %d", cpu);
		}
		FUNC2(cpu)->cpu_NMI_acknowledged = FALSE;
	}
	FUNC0(FALSE);

	FUNC7(intrs_enabled);
}