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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/ * thread_t ;
struct TYPE_2__ {int /*<<< orphan*/ * r; int /*<<< orphan*/  lr; int /*<<< orphan*/  sp; int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ savearea_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_ENTRY ; 
 int /*<<< orphan*/  CPU_DTRACE_FAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(void)
{
	thread_t        thread = FUNC1();
	savearea_t     *regs;
	user_addr_t     pc, sp;
	int             n = 0;

	if (thread == NULL)
		return 0;

	if (FUNC0(CPU_DTRACE_FAULT))
		return (-1);

	regs = (savearea_t *) FUNC3(thread);
	if (regs == NULL)
		return 0;

	pc = regs->pc;
	sp = regs->sp;

	if (FUNC0(CPU_DTRACE_ENTRY)) {
		n++;
		pc = regs->lr;
	}

       	/*
	 * Note that unlike ppc, the arm code does not use
	 * CPU_DTRACE_USTACK_FP. This is because arm always
	 * traces from the sp, even in syscall/profile/fbt
	 * providers.
	 */

	n += FUNC2(NULL, 0, pc, regs->r[7]);

	return (n);
}