#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_addr_t ;
typedef  void* uint64_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/ * thread_t ;
typedef  int /*<<< orphan*/  savearea_t ;
struct TYPE_4__ {size_t cpu_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpuc_dtrace_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* CPU ; 
 int /*<<< orphan*/  CPU_DTRACE_ENTRY ; 
 int volatile CPU_DTRACE_FAULT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cpu_core ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (void**,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(uint64_t * pcstack, int pcstack_limit)
{
	thread_t        thread = FUNC2();
	savearea_t     *regs;
	user_addr_t     pc, sp, fp;
	volatile uint16_t *flags = (volatile uint16_t *) & cpu_core[CPU->cpu_id].cpuc_dtrace_flags;
	int n;

	if (*flags & CPU_DTRACE_FAULT)
		return;

	if (pcstack_limit <= 0)
		return;

	/*
	 * If there's no user context we still need to zero the stack.
	 */
	if (thread == NULL)
		goto zero;

	regs = (savearea_t *) FUNC5(thread);
	if (regs == NULL)
		goto zero;

	*pcstack++ = (uint64_t)FUNC4();
	pcstack_limit--;

	if (pcstack_limit <= 0)
		return;

	pc = FUNC8(regs);
	sp = FUNC9(regs);
	fp = FUNC6(regs);	

	if (FUNC1(CPU_DTRACE_ENTRY)) {
		*pcstack++ = (uint64_t) pc;
		pcstack_limit--;
		if (pcstack_limit <= 0)
			return;

		pc = FUNC7(regs);
	}

	n = FUNC3(pcstack, pcstack_limit, pc, fp);

	FUNC0(n >= 0);
	FUNC0(n <= pcstack_limit);

	pcstack += n;
	pcstack_limit -= n;

zero:
	while (pcstack_limit-- > 0)
		*pcstack++ = 0ULL;
}