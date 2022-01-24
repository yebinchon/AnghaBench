#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ mp_call_queue_t ;
typedef  int cpumask_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  CROSSCALL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* mp_cpus_call_head ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(boolean_t	intrs_enabled,
		  cpumask_t	cpus_called,
		  cpumask_t	*cpus_responded)
{
	mp_call_queue_t		*cqp;
	uint64_t		tsc_spin_start;

	FUNC1(FUNC5() == 0 || FUNC4() != 0);
	cqp = &mp_cpus_call_head[FUNC2()];

	tsc_spin_start = FUNC10();
	while (*cpus_responded != cpus_called) {
		if (!intrs_enabled) {
			/* Sniffing w/o locking */
			if (!FUNC9(&cqp->queue))
				FUNC6();
			FUNC3(NULL);
		}
		if (FUNC7(tsc_spin_start)) {
			cpumask_t	cpus_unresponsive;

			cpus_unresponsive = cpus_called & ~(*cpus_responded);
			FUNC0(cpus_unresponsive, CROSSCALL_TIMEOUT);
			FUNC8("mp_cpus_call_wait() timeout, cpus: 0x%llx",
				cpus_unresponsive);
		}
	}
}