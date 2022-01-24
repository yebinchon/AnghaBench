#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int pc; } ;
typedef  TYPE_2__ x86_saved_state_t ;
struct TYPE_14__ {int rip; } ;
struct TYPE_16__ {int pc; TYPE_1__ isf; } ;
typedef  TYPE_3__ x86_saved_state64_t ;
struct TYPE_17__ {int eip; } ;
typedef  TYPE_4__ x86_saved_state32_t ;
struct TYPE_18__ {int /*<<< orphan*/  prof_id; } ;
typedef  TYPE_5__ profile_probe_t ;
typedef  TYPE_2__ arm_saved_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  VALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_2__*) ; 
 TYPE_3__* FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	profile_probe_t *prof = arg;

#if defined(__x86_64__)
	x86_saved_state_t *kern_regs = FUNC2(FUNC0());

	if (NULL != kern_regs) {
		/* Kernel was interrupted. */
		FUNC1(prof->prof_id, FUNC8(kern_regs)->isf.rip,  0x0, 0, 0, 0);
	} else {
		FUNC6(FUNC0(), VALID);
		/* Possibly a user interrupt */
		x86_saved_state_t   *tagged_regs = (x86_saved_state_t *)FUNC3(FUNC0());

		if (NULL == tagged_regs) {
			/* Too bad, so sad, no useful interrupt state. */
			FUNC1(prof->prof_id, 0xcafebabe,
	    		0x0, 0, 0, 0); /* XXX_BOGUS also see profile_usermode() below. */
		} else if (FUNC5(tagged_regs)) {
			x86_saved_state64_t *regs = FUNC8(tagged_regs);

			FUNC1(prof->prof_id, 0x0, regs->isf.rip, 0, 0, 0);
		} else {
			x86_saved_state32_t *regs = FUNC7(tagged_regs);

			FUNC1(prof->prof_id, 0x0, regs->eip, 0, 0, 0);
		}
	}
#elif defined(__arm__)
	{
		arm_saved_state_t *arm_kern_regs = (arm_saved_state_t *) find_kern_regs(current_thread());

		if (NULL != arm_kern_regs) {
			/* Kernel was interrupted. */
			dtrace_probe(prof->prof_id, arm_kern_regs->pc,  0x0, 0, 0, 0);
		} else {
			/* Possibly a user interrupt */
			arm_saved_state_t   *arm_user_regs = (arm_saved_state_t *)find_user_regs(current_thread());

			if (NULL == arm_user_regs) {
				/* Too bad, so sad, no useful interrupt state. */
				dtrace_probe(prof->prof_id, 0xcafebabe, 0x0, 0, 0, 0); /* XXX_BOGUS also see profile_usermode() below. */
			} else {
				dtrace_probe(prof->prof_id, 0x0, arm_user_regs->pc, 0, 0, 0);
			}
		}
	}
#elif defined(__arm64__)
	{
		arm_saved_state_t *arm_kern_regs = (arm_saved_state_t *) find_kern_regs(current_thread());

		if (NULL != arm_kern_regs) {
			/* Kernel was interrupted. */
			dtrace_probe(prof->prof_id, saved_state64(arm_kern_regs)->pc,  0x0, 0, 0, 0);
		} else {
			/* Possibly a user interrupt */
			arm_saved_state_t   *arm_user_regs = (arm_saved_state_t *)find_user_regs(current_thread());

			if (NULL == arm_user_regs) {
				/* Too bad, so sad, no useful interrupt state. */
				dtrace_probe(prof->prof_id, 0xcafebabe, 0x0, 0, 0, 0); /* XXX_BOGUS also see profile_usermode() below. */
			} else {
				dtrace_probe(prof->prof_id, 0x0, get_saved_state_pc(arm_user_regs), 0, 0, 0);
			}
		}
	}

#else
#error Unknown architecture
#endif
}