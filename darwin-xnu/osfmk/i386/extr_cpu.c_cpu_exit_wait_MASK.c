#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  stopped; } ;
struct TYPE_5__ {TYPE_1__ lcpu; } ;
typedef  TYPE_2__ cpu_data_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ LCPU_HALT ; 
 scalar_t__ LCPU_OFF ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x86_topo_lock ; 

void
FUNC7(
	int cpu)
{
    	cpu_data_t	*cdp = FUNC0(cpu);
	boolean_t	intrs_enabled;
	uint64_t	tsc_timeout;

	/*
	 * Wait until the CPU indicates that it has stopped.
	 * Disable interrupts while the topo lock is held -- arguably
	 * this should always be done but in this instance it can lead to
	 * a timeout if long-running interrupt were to occur here.
	 */
	intrs_enabled = FUNC2(FALSE);
	FUNC3(&x86_topo_lock);
	/* Set a generous timeout of several seconds (in TSC ticks) */
	tsc_timeout = FUNC5() + (10ULL * 1000 * 1000 * 1000);
	while ((cdp->lcpu.state != LCPU_HALT)
	       && (cdp->lcpu.state != LCPU_OFF)
	       && !cdp->lcpu.stopped) {
	    FUNC6(&x86_topo_lock);
	    FUNC2(intrs_enabled);
	    FUNC1();
	    if (FUNC5() > tsc_timeout)
		FUNC4("cpu_exit_wait(%d) timeout", cpu);
	    FUNC2(FALSE);
	    FUNC3(&x86_topo_lock);
	}
	FUNC6(&x86_topo_lock);
	FUNC2(intrs_enabled);
}