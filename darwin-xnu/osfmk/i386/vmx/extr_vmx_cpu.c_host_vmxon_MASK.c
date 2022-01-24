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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC ; 
 int /*<<< orphan*/  CPUMASK_ALL ; 
 int VMX_INUSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int VMX_OK ; 
 int VMX_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ vmx_exclusive ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  vmx_lck_mtx ; 
 int /*<<< orphan*/  vmx_on ; 
 int vmx_use_count ; 

int
FUNC8(boolean_t exclusive)
{
	int error;

	FUNC1(0 == FUNC2());

	if (!FUNC7())
		return VMX_UNSUPPORTED;

	FUNC3(vmx_lck_mtx);

	if (vmx_exclusive || (exclusive && vmx_use_count)) {
		error = VMX_INUSE;
	} else {
		if (0 == vmx_use_count) {
			FUNC6();
			vmx_exclusive = exclusive;
			vmx_use_count = 1;
			FUNC5(CPUMASK_ALL, ASYNC, vmx_on, NULL);

		} else {
			vmx_use_count++;
		}

		FUNC0("VMX use count: %d\n", vmx_use_count);
		error = VMX_OK;
	}

	FUNC4(vmx_lck_mtx);

	return error;
}