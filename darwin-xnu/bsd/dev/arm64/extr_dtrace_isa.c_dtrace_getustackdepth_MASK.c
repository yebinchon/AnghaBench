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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/ * thread_t ;
typedef  int /*<<< orphan*/  savearea_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_ENTRY ; 
 int /*<<< orphan*/  CPU_DTRACE_FAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(void)
{
	thread_t        thread = FUNC1();
	savearea_t     *regs;
	user_addr_t     pc, sp, fp;
	int             n = 0;

	if (thread == NULL)
		return 0;

	if (FUNC0(CPU_DTRACE_FAULT))
		return (-1);

	regs = (savearea_t *) FUNC3(thread);
	if (regs == NULL)
		return 0;
	
	pc = FUNC6(regs);
	sp = FUNC7(regs);
	fp = FUNC4(regs);

	if (FUNC0(CPU_DTRACE_ENTRY)) {
		n++;
		pc = FUNC5(regs);
	}

	/*
	 * Note that unlike ppc, the arm code does not use
	 * CPU_DTRACE_USTACK_FP. This is because arm always
	 * traces from the sp, even in syscall/profile/fbt
	 * providers.
	 */
	
	n += FUNC2(NULL, 0, pc, fp);

	return (n);
}