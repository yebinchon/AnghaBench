#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ waitq_lock_state_t ;
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ thread_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event64_t ;

/* Variables and functions */
 scalar_t__ KERN_NOT_WAITING ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ THREAD_NULL ; 
 int WAITQ_SELECT_MAX_PRI ; 
 scalar_t__ WAITQ_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct waitq*) ; 
 scalar_t__ FUNC6 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq*) ; 

kern_return_t FUNC11(struct waitq *waitq,
					event64_t wake_event,
					wait_result_t result,
					uint64_t *reserved_preposts,
					int priority,
					waitq_lock_state_t lock_state)
{
	thread_t thread;
	spl_t th_spl;

	FUNC0(FUNC5(waitq));

	if (priority == WAITQ_SELECT_MAX_PRI) {
		thread = FUNC6(waitq, wake_event,
		                                 reserved_preposts,
		                                 &th_spl);
	} else {
		thread = FUNC7(waitq, wake_event,
		                                 reserved_preposts,
		                                 priority, &th_spl);
	}


	if (thread != THREAD_NULL)
		FUNC9(waitq);
	else
		FUNC8(waitq);

	if (lock_state == WAITQ_UNLOCK)
		FUNC10(waitq);

	if (thread != THREAD_NULL) {
		FUNC1(thread, priority, waitq);
		kern_return_t ret = FUNC3(thread, result);
		FUNC0(ret == KERN_SUCCESS);
		FUNC4(thread);
		FUNC2(th_spl);
		return ret;
	}

	return KERN_NOT_WAITING;
}