#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* task_t ;
typedef  int kern_return_t ;
typedef  TYPE_2__* ipc_importance_task_t ;
struct TYPE_12__ {int iit_assertcnt; scalar_t__ iit_legacy_externdrop; scalar_t__ iit_legacy_externcnt; scalar_t__ iit_externdrop; scalar_t__ iit_externcnt; TYPE_1__* iit_task; } ;
struct TYPE_11__ {int /*<<< orphan*/  bsd_info; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  IIT_UPDATE_DROP ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IMP_ASSERTION ; 
 int IMP_DROP ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int KERN_FAILURE ; 
 int KERN_INVALID_ARGUMENT ; 
 int KERN_SUCCESS ; 
 TYPE_1__* TASK_NULL ; 
 int TASK_POLICY_EXTERNAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int,int,int,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (TYPE_1__*) ; 

kern_return_t
FUNC14(ipc_importance_task_t task_imp, uint32_t count)
{
	int ret = KERN_SUCCESS;
	task_t target_task;
	uint32_t target_assertcnt;
	uint32_t target_externcnt;
	uint32_t target_legacycnt;

	if (count > 1) {
		return KERN_INVALID_ARGUMENT;
	}
		
	FUNC5();
	target_task = task_imp->iit_task;

#if IMPORTANCE_TRACE
	int target_pid = task_pid(target_task);

	KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE, (IMPORTANCE_CODE(IMP_ASSERTION, (IMP_DROP | TASK_POLICY_EXTERNAL))) | DBG_FUNC_START,
		proc_selfpid(), target_pid, task_imp->iit_assertcnt, IIT_LEGACY_EXTERN(task_imp), 0);
#endif

	if (count > FUNC1(task_imp)) {
		/* Process over-released its boost count - save data for diagnostic printf */
		/* TODO: If count > 1, we should clear out as many external assertions as there are left. */
		target_assertcnt = task_imp->iit_assertcnt;
		target_externcnt = FUNC0(task_imp);
		target_legacycnt = FUNC1(task_imp);
		ret = KERN_FAILURE;
	} else {
		/* 
		 * decrement legacy external count from the top level and reflect
		 * into internal for this and all subsequent updates.
		 */
		FUNC4(FUNC7(task_imp));
		FUNC4(FUNC0(task_imp) >= count);

		task_imp->iit_legacy_externdrop += count;
		task_imp->iit_externdrop += count;

		/* reset extern counters (if appropriate) */
		if (FUNC1(task_imp) == 0) {
			if (FUNC0(task_imp) != 0) {
				task_imp->iit_externcnt -= task_imp->iit_legacy_externcnt;
				task_imp->iit_externdrop -= task_imp->iit_legacy_externdrop;
			} else {
				task_imp->iit_externcnt = 0;
				task_imp->iit_externdrop = 0;
			}
			task_imp->iit_legacy_externcnt = 0;
			task_imp->iit_legacy_externdrop = 0;
		}
		
		/* reflect the drop to the internal assertion count (and effect any importance change) */
		if (FUNC6(task_imp, IIT_UPDATE_DROP, count)) {
			FUNC8(task_imp, IIT_UPDATE_DROP, TRUE);
		}
		ret = KERN_SUCCESS;
	}

#if IMPORTANCE_TRACE
		KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE, (IMPORTANCE_CODE(IMP_ASSERTION, (IMP_DROP | TASK_POLICY_EXTERNAL))) | DBG_FUNC_END,
					  proc_selfpid(), target_pid, task_imp->iit_assertcnt, IIT_LEGACY_EXTERN(task_imp), 0);
#endif

	FUNC9();

	/* delayed printf for user-supplied data failures */
	if (KERN_FAILURE == ret && TASK_NULL != target_task) {
		FUNC10("BUG in process %s[%d]: over-released legacy external boost assertions (%d total, %d external, %d legacy-external)\n",
		       FUNC11(target_task->bsd_info), FUNC13(target_task),
		       target_assertcnt, target_externcnt, target_legacycnt);
	}

	return(ret);
}