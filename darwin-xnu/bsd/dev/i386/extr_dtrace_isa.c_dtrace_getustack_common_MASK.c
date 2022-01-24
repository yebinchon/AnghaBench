#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_addr_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint16_t ;
struct TYPE_9__ {int /*<<< orphan*/ * gregs; } ;
struct TYPE_11__ {int /*<<< orphan*/  uc_link; TYPE_1__ uc_mcontext; } ;
typedef  TYPE_3__ ucontext_t ;
struct TYPE_10__ {int /*<<< orphan*/ * gregs; } ;
struct TYPE_12__ {int /*<<< orphan*/  uc_link; TYPE_2__ uc_mcontext; } ;
typedef  TYPE_4__ ucontext32_t ;
struct frame32 {int dummy; } ;
struct frame {int dummy; } ;
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  siginfo32_t ;
typedef  int /*<<< orphan*/  greg_t ;
typedef  int /*<<< orphan*/  greg32_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_16__ {size_t cpu_id; } ;
struct TYPE_15__ {int /*<<< orphan*/  cpuc_dtrace_flags; } ;
struct TYPE_14__ {uintptr_t lwp_oldcontext; } ;
struct TYPE_13__ {scalar_t__ p_model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_8__* CPU ; 
 int volatile CPU_DTRACE_FAULT ; 
 scalar_t__ DATAMODEL_NATIVE ; 
 size_t EBP ; 
 size_t EIP ; 
 size_t REG_FP ; 
 size_t REG_PC ; 
 scalar_t__ RETURN_OFFSET ; 
 scalar_t__ RETURN_OFFSET64 ; 
 TYPE_7__* cpu_core ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_6__* lwp ; 
 TYPE_5__* p ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(uint64_t *pcstack, int pcstack_limit, user_addr_t pc,
    user_addr_t sp)
{
#if 0
	volatile uint16_t *flags =
	    (volatile uint16_t *)&cpu_core[CPU->cpu_id].cpuc_dtrace_flags;

	uintptr_t oldcontext = lwp->lwp_oldcontext; /* XXX signal stack crawl */
	size_t s1, s2;
#endif
	int ret = 0;
	boolean_t is64Bit = FUNC5(FUNC1());

	FUNC0(pcstack == NULL || pcstack_limit > 0);
	
#if 0 /* XXX signal stack crawl */
	if (p->p_model == DATAMODEL_NATIVE) {
		s1 = sizeof (struct frame) + 2 * sizeof (long);
		s2 = s1 + sizeof (siginfo_t);
	} else {
		s1 = sizeof (struct frame32) + 3 * sizeof (int);
		s2 = s1 + sizeof (siginfo32_t);
	}
#endif

	while (pc != 0) {
		ret++;
		if (pcstack != NULL) {
			*pcstack++ = (uint64_t)pc;
			pcstack_limit--;
			if (pcstack_limit <= 0)
				break;
		}

		if (sp == 0)
			break;

#if 0 /* XXX signal stack crawl */
		if (oldcontext == sp + s1 || oldcontext == sp + s2) {
			if (p->p_model == DATAMODEL_NATIVE) {
				ucontext_t *ucp = (ucontext_t *)oldcontext;
				greg_t *gregs = ucp->uc_mcontext.gregs;

				sp = dtrace_fulword(&gregs[REG_FP]);
				pc = dtrace_fulword(&gregs[REG_PC]);

				oldcontext = dtrace_fulword(&ucp->uc_link);
			} else {
				ucontext32_t *ucp = (ucontext32_t *)oldcontext;
				greg32_t *gregs = ucp->uc_mcontext.gregs;

				sp = dtrace_fuword32(&gregs[EBP]);
				pc = dtrace_fuword32(&gregs[EIP]);

				oldcontext = dtrace_fuword32(&ucp->uc_link);
			}
		} 
		else
#endif
		{
			if (is64Bit) {
				pc = FUNC4((sp + RETURN_OFFSET64));
				sp = FUNC4(sp);
			} else {
				pc = FUNC3((sp + RETURN_OFFSET));
				sp = FUNC3(sp);
			}
		}

#if 0 /* XXX */
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

	return (ret);
}