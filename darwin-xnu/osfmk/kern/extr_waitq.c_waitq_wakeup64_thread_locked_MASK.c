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
typedef  int /*<<< orphan*/  thread_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event64_t ;

/* Variables and functions */
 scalar_t__ KERN_NOT_WAITING ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ WAITQ_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct waitq*) ; 
 scalar_t__ FUNC6 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*) ; 

kern_return_t FUNC10(struct waitq *waitq,
					   event64_t wake_event,
					   thread_t thread,
					   wait_result_t result,
					   waitq_lock_state_t lock_state)
{
	kern_return_t ret;
	spl_t th_spl;

	FUNC0(FUNC5(waitq));
	FUNC1(thread);

	/*
	 * See if the thread was still waiting there.  If so, it got
	 * dequeued and returned locked.
	 */
	ret = FUNC6(waitq, wake_event, thread, &th_spl);

	if (ret == KERN_SUCCESS)
		FUNC8(waitq);
	else
		FUNC7(waitq);

	if (lock_state == WAITQ_UNLOCK)
		FUNC9(waitq);

	if (ret != KERN_SUCCESS)
		return KERN_NOT_WAITING;

	ret = FUNC3(thread, result);
	FUNC0(ret == KERN_SUCCESS);
	FUNC4(thread);
	FUNC2(th_spl);

	return ret;
}