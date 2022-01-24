#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* workq_threadreq_t ;
struct TYPE_7__ {int trp_flags; scalar_t__ trp_refillms; int /*<<< orphan*/  trp_cpupercent; } ;
typedef  TYPE_2__ workq_threadreq_param_t ;
typedef  int uint64_t ;
struct uthread {int uu_workq_flags; } ;
struct TYPE_6__ {int tr_flags; } ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  THREAD_CPULIMIT_BLOCK ; 
 int /*<<< orphan*/  THREAD_CPULIMIT_DISABLE ; 
 int TRP_CPUPERCENT ; 
 int TR_FLAG_WL_PARAMS ; 
 int UT_WORKQ_CPUPERCENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct uthread* FUNC1 () ; 
 TYPE_2__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(workq_threadreq_t req, struct uthread *uth)
{
	FUNC0(uth == FUNC1());
	workq_threadreq_param_t trp = { };

	if (req && (req->tr_flags & TR_FLAG_WL_PARAMS)) {
		trp = FUNC2(req);
	}

	if (uth->uu_workq_flags & UT_WORKQ_CPUPERCENT) {
		/*
		 * Going through disable when we have an existing CPU percent limit
		 * set will force the ledger to refill the token bucket of the current
		 * thread. Removing any penalty applied by previous thread use.
		 */
		FUNC3(THREAD_CPULIMIT_DISABLE, 0, 0);
		uth->uu_workq_flags &= ~UT_WORKQ_CPUPERCENT;
	}

	if (trp.trp_flags & TRP_CPUPERCENT) {
		FUNC3(THREAD_CPULIMIT_BLOCK, trp.trp_cpupercent,
				(uint64_t)trp.trp_refillms * NSEC_PER_SEC);
		uth->uu_workq_flags |= UT_WORKQ_CPUPERCENT;
	}
}