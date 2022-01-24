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
struct TYPE_3__ {void* cpu_running; void* cpu_boot_complete; int /*<<< orphan*/  cpu_id; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* TRUE ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(
	void)
{
	cpu_data_t	*cdp = FUNC1();

	FUNC0(cdp->cpu_id, !cdp->cpu_boot_complete);
	cdp->cpu_boot_complete = TRUE;
	cdp->cpu_running = TRUE;
	FUNC2();

#if CONFIG_VMX
	/* initialize VMX for every CPU */
	vmx_cpu_init();
#endif
}