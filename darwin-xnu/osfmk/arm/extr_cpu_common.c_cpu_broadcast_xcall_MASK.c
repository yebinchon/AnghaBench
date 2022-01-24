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
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  int /*<<< orphan*/  cpu_data_t ;
typedef  int /*<<< orphan*/  (* broadcastFunc ) (void*) ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ cpu_data_vaddr; } ;

/* Variables and functions */
 TYPE_1__* CpuDataEntries ; 
 scalar_t__ FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  SIGPxcall ; 
 int /*<<< orphan*/  THREAD_AWAKENED ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (unsigned int*,unsigned int) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 unsigned int real_ncpus ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

unsigned int
FUNC9(uint32_t *synch,
		    boolean_t self_xcall,
		    broadcastFunc func,
		    void *parm)
{
	boolean_t	intr;
	cpu_data_t	*cpu_data_ptr;
	cpu_data_t	*target_cpu_datap;
	unsigned int	failsig;
	int		cpu;
	int		max_cpu;

	intr = FUNC7(FALSE);
	cpu_data_ptr = FUNC4();

	failsig = 0;

	if (synch != NULL) {
		*synch = real_ncpus;
		FUNC0((event_t)synch, THREAD_UNINT);
	}

	max_cpu = FUNC6();
	for (cpu=0; cpu <= max_cpu; cpu++) {
		target_cpu_datap = (cpu_data_t *)CpuDataEntries[cpu].cpu_data_vaddr;

		if ((target_cpu_datap == NULL) || (target_cpu_datap == cpu_data_ptr))
			continue;

		if(KERN_SUCCESS != FUNC2(target_cpu_datap, SIGPxcall, (void *)func, parm)) {
			failsig++;
		}
	}


	if (self_xcall) {
		func(parm);
	}

	(void) FUNC7(intr);

	if (synch != NULL) {
		if (FUNC5(synch, (!self_xcall)? failsig+1 : failsig) == 0)
			FUNC1(FUNC3(), THREAD_AWAKENED);
		else
			FUNC8(THREAD_CONTINUE_NULL);
	}

	if (!self_xcall)
		return (real_ncpus - failsig - 1);
	else
		return (real_ncpus - failsig);
}