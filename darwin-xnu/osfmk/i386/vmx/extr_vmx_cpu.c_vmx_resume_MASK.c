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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vmx_on; } ;
struct TYPE_5__ {TYPE_1__ specs; } ;
typedef  TYPE_2__ vmx_cpu_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {TYPE_2__ cpu_vmx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ vmx_use_count ; 

void
FUNC4(boolean_t is_wake_from_hibernate)
{
	FUNC0("vmx_resume\n");

	FUNC2();

	if (vmx_use_count == 0)
		return;

	/*
	 * When resuming from hiberate on the boot cpu,
	 * we must mark VMX as off since that's the state at wake-up
	 * because the restored state in memory records otherwise.
	 * This results in vmx_on() doing the right thing.
	 */
	if (is_wake_from_hibernate) {
		vmx_cpu_t *cpu = &FUNC1()->cpu_vmx;
		cpu->specs.vmx_on = FALSE;
	}

	FUNC3(NULL);
}