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
struct TYPE_3__ {void* cpu_running; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smp_initialized ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  x86_topo_lock ; 

void
FUNC7(void)
{
	cpu_data_t	*cdp = FUNC1();

	FUNC0(!FUNC3());

	if (!smp_initialized) {
		cdp->cpu_running = TRUE;
		return;
	}

	FUNC4(&x86_topo_lock);
	cdp->cpu_running = TRUE;
	FUNC6();
	FUNC5(&x86_topo_lock);
	FUNC2();
}