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

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 int /*<<< orphan*/  CPUMASK_ALL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmx_exclusive ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  vmx_lck_mtx ; 
 int /*<<< orphan*/  vmx_off ; 
 int vmx_use_count ; 

void
FUNC7()
{
	FUNC1(0 == FUNC2());

	FUNC3(vmx_lck_mtx);

	if (1 == vmx_use_count) {
		vmx_exclusive = FALSE;
		vmx_use_count = 0;
		FUNC5(CPUMASK_ALL, ASYNC, vmx_off, NULL);
		FUNC6();
	} else {
		vmx_use_count--;
	}

	FUNC4(vmx_lck_mtx);

	FUNC0("VMX use count: %d\n", vmx_use_count);
}