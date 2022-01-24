#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_importance_task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_7__ {scalar_t__ iit_legacy_externcnt; scalar_t__ iit_externcnt; scalar_t__ iit_legacy_externdrop; scalar_t__ iit_externdrop; scalar_t__ iit_assertcnt; char* iit_procname; int iit_bsd_pid; scalar_t__ iit_live_donor; scalar_t__ iit_donor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  IIT_UPDATE_DROP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(ipc_importance_task_t task_imp, boolean_t donor)
{
	boolean_t before_donor, after_donor;

	/* remove the donor bit, live-donor bit and externalized boosts */
	before_donor = FUNC3(task_imp);
	if (donor) {
		task_imp->iit_donor = 0;
	}
	FUNC2(FUNC1(task_imp) <= FUNC0(task_imp));
	FUNC2(task_imp->iit_legacy_externcnt <= task_imp->iit_externcnt);
	FUNC2(task_imp->iit_legacy_externdrop <= task_imp->iit_externdrop);
	task_imp->iit_externcnt -= task_imp->iit_legacy_externcnt;
	task_imp->iit_externdrop -= task_imp->iit_legacy_externdrop;

	/* assert(IIT_LEGACY_EXTERN(task_imp) <= task_imp->iit_assertcnt); */
	if (FUNC0(task_imp) < task_imp->iit_assertcnt) {
		task_imp->iit_assertcnt -= FUNC1(task_imp);
	} else {
		task_imp->iit_assertcnt = FUNC0(task_imp);
	}
	task_imp->iit_legacy_externcnt = 0;
	task_imp->iit_legacy_externdrop = 0;
	after_donor = FUNC3(task_imp);

#if DEVELOPMENT || DEBUG
	if (task_imp->iit_assertcnt > 0 && task_imp->iit_live_donor) {
		printf("Live donor task %s[%d] still has %d importance assertions after reset\n", 
		       task_imp->iit_procname, task_imp->iit_bsd_pid, task_imp->iit_assertcnt);
	}
#endif

	/* propagate a downstream drop if there was a change in donor status */
	if (after_donor != before_donor) {
		FUNC4(task_imp, IIT_UPDATE_DROP, FALSE);
	}
}