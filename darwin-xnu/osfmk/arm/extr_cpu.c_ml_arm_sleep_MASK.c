#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_5__ {scalar_t__ cpu_sleep_token; scalar_t__ cpu_CLW_active; scalar_t__ cpu_CLWClean_req; scalar_t__ cpu_CLWFlush_req; } ;
typedef  TYPE_1__ cpu_data_t ;
struct TYPE_6__ {scalar_t__ cpu_data_vaddr; } ;

/* Variables and functions */
 scalar_t__ ARM_CPU_ON_SLEEP_PATH ; 
 TYPE_1__ BootCpuData ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* CpuDataEntries ; 
 int /*<<< orphan*/  DMB_ISH ; 
 int /*<<< orphan*/  DSB_SY ; 
 scalar_t__ IOS_STATE ; 
 int /*<<< orphan*/  IOS_STATE_SIZE ; 
 unsigned int MAX_CPUS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void const*,void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  rtclock_base_abstime ; 
 scalar_t__ suspend_signature ; 
 int /*<<< orphan*/  wake_abstime ; 

__attribute__((noreturn))
void
FUNC10(void)
{
	cpu_data_t     *cpu_data_ptr = FUNC6();

	if (cpu_data_ptr == &BootCpuData) {
		cpu_data_t	*target_cdp;
		unsigned int	cpu;

		for (cpu=0; cpu < MAX_CPUS; cpu++) {
			target_cdp = (cpu_data_t *)CpuDataEntries[cpu].cpu_data_vaddr;
			if(target_cdp == (cpu_data_t *)NULL)
				break;

			if (target_cdp == cpu_data_ptr)
				continue;

			while (target_cdp->cpu_sleep_token != ARM_CPU_ON_SLEEP_PATH);
		}

		/* Now that the other cores have entered the sleep path, set
		 * the abstime fixup we'll use when we resume.*/
		rtclock_base_abstime = FUNC7();
		wake_abstime = rtclock_base_abstime;

	} else {
		FUNC8();
		FUNC1();
	}
	cpu_data_ptr->cpu_sleep_token = ARM_CPU_ON_SLEEP_PATH;
#if	__ARM_SMP__ && defined(ARMA7)
	cpu_data_ptr->cpu_CLWFlush_req = 0;
	cpu_data_ptr->cpu_CLWClean_req = 0;
	__builtin_arm_dmb(DMB_ISH);
	cpu_data_ptr->cpu_CLW_active = 0;
#endif
	if (cpu_data_ptr == &BootCpuData) {
		FUNC8();
		FUNC9();
		FUNC5((const void *)suspend_signature, (void *)(IOS_STATE), IOS_STATE_SIZE);
	} else
		FUNC0((vm_offset_t) cpu_data_ptr, sizeof(cpu_data_t));

	FUNC3(DSB_SY);
	while (TRUE) {
#if     __ARM_ENABLE_WFE_
		__builtin_arm_wfe();
#endif
	} /* Spin */
}