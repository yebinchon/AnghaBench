#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ebp; int /*<<< orphan*/  uesp; int /*<<< orphan*/  eip; } ;
struct TYPE_7__ {int /*<<< orphan*/  rsp; int /*<<< orphan*/  rip; } ;
struct TYPE_8__ {int /*<<< orphan*/  rbp; TYPE_1__ isf; } ;
struct TYPE_10__ {TYPE_3__ ss_32; TYPE_2__ ss_64; } ;
typedef  TYPE_4__ x86_saved_state_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/ * thread_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {size_t cpu_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  cpuc_dtrace_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_6__* CPU ; 
 int volatile CPU_DTRACE_FAULT ; 
 int /*<<< orphan*/  VALID ; 
 TYPE_5__* cpu_core ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(uint64_t *pcstack, int pcstack_limit)
{
	thread_t thread = FUNC2();
	x86_saved_state_t *regs;
	user_addr_t pc, sp, fp;
	volatile uint16_t *flags =
	    (volatile uint16_t *)&cpu_core[CPU->cpu_id].cpuc_dtrace_flags;
	int n;
	boolean_t is64Bit = FUNC8(FUNC1());

	if (*flags & CPU_DTRACE_FAULT)
		return;

	if (pcstack_limit <= 0)
		return;

	/*
	 * If there's no user context we still need to zero the stack.
	 */
	if (thread == NULL)
		goto zero;

	FUNC7(thread, VALID);
	regs = (x86_saved_state_t *)FUNC6(thread);
	if (regs == NULL)
		goto zero;
		
	*pcstack++ = (uint64_t)FUNC5();
	pcstack_limit--;

	if (pcstack_limit <= 0)
		return;

	if (is64Bit) {
		pc = regs->ss_64.isf.rip;
		sp = regs->ss_64.isf.rsp;
		fp = regs->ss_64.rbp;
	} else {
		pc = regs->ss_32.eip;
		sp = regs->ss_32.uesp;
		fp = regs->ss_32.ebp;
	}

        /*
	 * The return value indicates if we've modified the stack.
	 * Since there is nothing else to fix up in either case,
	 * we can safely ignore it here.
	 */
	(void)FUNC3(&pcstack, &pcstack_limit, &pc, sp);

	if(pcstack_limit <= 0)
	    return;

	/*
	 * Note that unlike ppc, the x86 code does not use
	 * CPU_DTRACE_USTACK_FP. This is because x86 always
	 * traces from the fp, even in syscall/profile/fbt
	 * providers.
	 */
	n = FUNC4(pcstack, pcstack_limit, pc, fp);
	FUNC0(n >= 0);
	FUNC0(n <= pcstack_limit);

	pcstack += n;
	pcstack_limit -= n;

zero:
	while (pcstack_limit-- > 0)
		*pcstack++ = 0;
}