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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((noreturn))
void
FUNC8(arm_saved_state_t *state)
{
	uint32_t code;

#define platform_syscall_kprintf(x...) /* kprintf("platform_syscall: " x) */

	code = (uint32_t)FUNC1(state, 3);
	switch (code) {
	case 0:
		/* I-Cache flush */
		platform_syscall_kprintf("icache flush requested.\n");
		FUNC2(FUNC1(state, 0), FUNC1(state, 1));
		break;
	case 1:
		/* D-Cache flush */
		platform_syscall_kprintf("dcache flush requested.\n");
		FUNC0(FUNC1(state, 0), FUNC1(state, 1));
		break;
	case 2:
		/* set cthread */
		platform_syscall_kprintf("set cthread self.\n");
		FUNC7(FUNC1(state, 0));
		break;
	case 3:
		/* get cthread */
		platform_syscall_kprintf("get cthread self.\n");
		FUNC4(state, 0, FUNC6());
		break;
	default:
		platform_syscall_kprintf("unknown: %d\n", code);
		break;
	}

	FUNC5();
}