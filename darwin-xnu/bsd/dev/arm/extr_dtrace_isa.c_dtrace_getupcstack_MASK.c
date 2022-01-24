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
typedef  scalar_t__ user_addr_t ;
typedef  void* uint64_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/ * thread_t ;
struct TYPE_4__ {int /*<<< orphan*/ * r; scalar_t__ lr; scalar_t__ sp; scalar_t__ pc; } ;
typedef  TYPE_1__ savearea_t ;
struct TYPE_6__ {size_t cpu_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  cpuc_dtrace_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* CPU ; 
 int /*<<< orphan*/  CPU_DTRACE_ENTRY ; 
 int volatile CPU_DTRACE_FAULT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* cpu_core ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (void**,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(uint64_t * pcstack, int pcstack_limit)
{
	thread_t        thread = FUNC2();
	savearea_t     *regs;
	user_addr_t     pc, sp;
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

	pc = regs->pc;
	sp = regs->sp;

	if (FUNC1(CPU_DTRACE_ENTRY)) {
		*pcstack++ = (uint64_t) pc;
		pcstack_limit--;
		if (pcstack_limit <= 0)
			return;

		pc = regs->lr;
	}

	n = FUNC3(pcstack, pcstack_limit, pc, regs->r[7]);

	FUNC0(n >= 0);
	FUNC0(n <= pcstack_limit);

	pcstack += n;
	pcstack_limit -= n;

zero:
	while (pcstack_limit-- > 0)
		*pcstack++ = 0ULL;
}