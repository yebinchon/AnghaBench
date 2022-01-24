#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  TYPE_2__* thread_t ;
typedef  int mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {int cthread_self; } ;
struct TYPE_7__ {scalar_t__ task; TYPE_1__ machine; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int MACHDEP_CPUNUM_MASK ; 
 int UINT32_MAX ; 
 TYPE_2__* FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ kernel_task ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC7(
	thread_t			thread,
	mach_vm_offset_t	tsd_base)
{

	if (thread->task == kernel_task) {
		return KERN_INVALID_ARGUMENT;
	}

	if (tsd_base & MACHDEP_CPUNUM_MASK) {
		return KERN_INVALID_ARGUMENT;
	}

	if (FUNC5(thread)) {
		if (tsd_base > FUNC6(thread->map))
			tsd_base = 0ULL;
	} else {
		if (tsd_base > UINT32_MAX)
			tsd_base = 0ULL;
	}

	thread->machine.cthread_self = tsd_base;

	/* For current thread, make the TSD base active immediately */
	if (thread == FUNC0()) {
		uint64_t cpunum, tpidrro_el0;

		FUNC2();
		tpidrro_el0 = FUNC1();
		cpunum = tpidrro_el0 & (MACHDEP_CPUNUM_MASK);
		FUNC4(tsd_base | cpunum);
		FUNC3();

	}

	return KERN_SUCCESS;
}