#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_2__* task_t ;
typedef  TYPE_3__* ipc_importance_task_t ;
typedef  int /*<<< orphan*/  iit_update_type_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {int /*<<< orphan*/  iit_donor; int /*<<< orphan*/  iit_transitions; TYPE_2__* iit_task; } ;
struct TYPE_10__ {int /*<<< orphan*/  tep_live_donor; } ;
struct TYPE_11__ {TYPE_1__ effective_policy; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IIT_UPDATE_DROP ; 
 int /*<<< orphan*/  IIT_UPDATE_HOLD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMP_DONOR_CHANGE ; 
 int /*<<< orphan*/  IMP_DONOR_UPDATE_LIVE_DONOR_STATE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* TASK_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (TYPE_2__*) ; 

void
FUNC9(ipc_importance_task_t task_imp)
{
	uint32_t task_live_donor;
	boolean_t before_donor;
	boolean_t after_donor;
	task_t target_task;
  
	FUNC2(task_imp != NULL);

	/*
	 * Nothing to do if the task is not marked as expecting
	 * live donor updates.
	 */
	if (!FUNC5(task_imp)) {
		return;
	}

	FUNC3();

	/* If the task got disconnected on the way here, no use (or ability) adjusting live donor status */
	target_task = task_imp->iit_task;
	if (TASK_NULL == target_task) {
		FUNC7();
		return;
	}
	before_donor = FUNC4(task_imp);

	/* snapshot task live donor status - may change, but another call will accompany the change */
	task_live_donor = target_task->effective_policy.tep_live_donor;

#if IMPORTANCE_TRACE
	int target_pid = task_pid(target_task);

	KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
	                          (IMPORTANCE_CODE(IMP_DONOR_CHANGE, IMP_DONOR_UPDATE_LIVE_DONOR_STATE)) | DBG_FUNC_START,
	                          target_pid, task_imp->iit_donor, task_live_donor, before_donor, 0);
#endif	                          

	/* update the task importance live donor status based on the task's value */
	task_imp->iit_donor = task_live_donor;

	after_donor = FUNC4(task_imp);

	/* Has the effectiveness of being a donor changed as a result of this update? */
	if (before_donor != after_donor) {
		iit_update_type_t type;

		/* propagate assertions without updating the current task policy (already handled) */
		if (0 == before_donor) {
			task_imp->iit_transitions++;
			type = IIT_UPDATE_HOLD;
		} else {
			type = IIT_UPDATE_DROP;
		}
		FUNC6(task_imp, type, FALSE);
	}

#if IMPORTANCE_TRACE
	KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
	                          (IMPORTANCE_CODE(IMP_DONOR_CHANGE, IMP_DONOR_UPDATE_LIVE_DONOR_STATE)) | DBG_FUNC_END,
	                          target_pid, task_imp->iit_donor, task_live_donor, after_donor, 0);
#endif

	FUNC7();
}