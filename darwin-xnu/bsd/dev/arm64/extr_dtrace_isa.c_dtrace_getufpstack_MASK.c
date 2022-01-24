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
typedef  size_t user_addr_t ;
typedef  void* uint64_t ;
typedef  int uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/ * gregs; } ;
struct TYPE_8__ {int /*<<< orphan*/  uc_link; TYPE_1__ uc_mcontext; } ;
typedef  TYPE_2__ ucontext_t ;
typedef  int /*<<< orphan*/ * thread_t ;
struct frame32 {int dummy; } ;
struct frame {int dummy; } ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  siginfo32_t ;
typedef  int /*<<< orphan*/  savearea_t ;
typedef  int /*<<< orphan*/  greg_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {size_t cpu_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  cpuc_dtrace_flags; } ;
struct TYPE_10__ {uintptr_t lwp_oldcontext; } ;
struct TYPE_9__ {scalar_t__ p_model; } ;

/* Variables and functions */
 TYPE_6__* CPU ; 
 int /*<<< orphan*/  CPU_DTRACE_ENTRY ; 
 int volatile CPU_DTRACE_FAULT ; 
 scalar_t__ DATAMODEL_NATIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t EBP ; 
 size_t EIP ; 
 size_t REG_FP ; 
 size_t REG_PC ; 
 size_t RETURN_OFFSET ; 
 size_t RETURN_OFFSET64 ; 
 TYPE_5__* cpu_core ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (size_t) ; 
 size_t FUNC5 (size_t) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_4__* lwp ; 
 TYPE_3__* p ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(uint64_t * pcstack, uint64_t * fpstack, int pcstack_limit)
{
	thread_t        thread = FUNC2();
	boolean_t       is64bit = FUNC10(FUNC1());
	savearea_t      *regs;
	user_addr_t     pc, sp;
	volatile        uint16_t  *flags = (volatile uint16_t *) & cpu_core[CPU->cpu_id].cpuc_dtrace_flags;

#if 0
	uintptr_t oldcontext;
	size_t          s1, s2;
#endif

	if (*flags & CPU_DTRACE_FAULT)
		return;

	if (pcstack_limit <= 0)
		return;

        /*
	 * If there's no user context we still need to zero the stack.
	 */
	if (thread == NULL)
		goto zero;
	
	regs = (savearea_t *) FUNC7(thread);
	if (regs == NULL)
		goto zero;

	*pcstack++ = (uint64_t)FUNC6();
	pcstack_limit--;

	if (pcstack_limit <= 0)
		return;

	pc = FUNC9(regs);
	sp = FUNC8(regs);

#if 0				/* XXX signal stack crawl */
	oldcontext = lwp->lwp_oldcontext;

	if (p->p_model == DATAMODEL_NATIVE) {
		s1 = sizeof(struct frame) + 2 * sizeof(long);
		s2 = s1 + sizeof(siginfo_t);
	} else {
		s1 = sizeof(struct frame32) + 3 * sizeof(int);
		s2 = s1 + sizeof(siginfo32_t);
	}
#endif

	if (FUNC0(CPU_DTRACE_ENTRY)) {
		*pcstack++ = (uint64_t) pc;
		*fpstack++ = 0;
		pcstack_limit--;
		if (pcstack_limit <= 0)
			return;

		if (is64bit)
			pc = FUNC5(sp);
		else
			pc = FUNC4(sp);
	}
	while (pc != 0 && sp != 0) {
		*pcstack++ = (uint64_t) pc;
		*fpstack++ = sp;
		pcstack_limit--;
		if (pcstack_limit <= 0)
			break;

#if 0				/* XXX signal stack crawl */
		if (oldcontext == sp + s1 || oldcontext == sp + s2) {
			if (p->p_model == DATAMODEL_NATIVE) {
				ucontext_t     *ucp = (ucontext_t *) oldcontext;
				greg_t         *gregs = ucp->uc_mcontext.gregs;

				sp = dtrace_fulword(&gregs[REG_FP]);
				pc = dtrace_fulword(&gregs[REG_PC]);

				oldcontext = dtrace_fulword(&ucp->uc_link);
			} else {
				ucontext_t     *ucp = (ucontext_t *) oldcontext;
				greg_t         *gregs = ucp->uc_mcontext.gregs;

				sp = dtrace_fuword32(&gregs[EBP]);
				pc = dtrace_fuword32(&gregs[EIP]);

				oldcontext = dtrace_fuword32(&ucp->uc_link);
			}
		} else
#endif
		{
			if (is64bit) {
				pc = FUNC5((sp + RETURN_OFFSET64));
				sp = FUNC5(sp);
			} else {
				pc = FUNC4((sp + RETURN_OFFSET));
				sp = FUNC4(sp);
			}
		}

#if 0
		/* XXX ARMTODO*/
		/*
		 * This is totally bogus:  if we faulted, we're going to clear
		 * the fault and break.  This is to deal with the apparently
		 * broken Java stacks on x86.
		 */
		if (*flags & CPU_DTRACE_FAULT) {
			*flags &= ~CPU_DTRACE_FAULT;
			break;
		}
#endif
	}

zero:	
	while (pcstack_limit-- > 0)
		*pcstack++ = 0ULL;
}