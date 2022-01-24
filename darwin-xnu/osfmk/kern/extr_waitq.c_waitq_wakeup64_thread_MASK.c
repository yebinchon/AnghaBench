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
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  event64_t ;

/* Variables and functions */
 scalar_t__ KERN_NOT_WAITING ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 scalar_t__ FUNC8 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC11 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC12 (struct waitq*) ; 

kern_return_t FUNC13(struct waitq *waitq,
				    event64_t wake_event,
				    thread_t thread,
				    wait_result_t result)
{
	kern_return_t ret;
	spl_t s, th_spl;

	if (!FUNC12(waitq))
		FUNC1("Invalid waitq: %p", waitq);

	if (FUNC6(waitq))
		s = FUNC2();
	FUNC7(waitq);

	ret = FUNC8(waitq, wake_event, thread, &th_spl);
	/* on success, returns 'thread' locked */

	FUNC11(waitq);

	if (ret == KERN_SUCCESS) {
		ret = FUNC4(thread, result);
		FUNC0(ret == KERN_SUCCESS);
		FUNC5(thread);
		FUNC3(th_spl);
		FUNC10(waitq);
	} else {
		ret = KERN_NOT_WAITING;
		FUNC9(waitq);
	}

	if (FUNC6(waitq))
		FUNC3(s);

	return ret;
}