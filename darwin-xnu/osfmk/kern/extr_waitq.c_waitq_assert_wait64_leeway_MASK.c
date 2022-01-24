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
typedef  int /*<<< orphan*/  wait_timeout_urgency_t ;
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  int /*<<< orphan*/  wait_interrupt_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  event64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 

wait_result_t FUNC9(struct waitq *waitq,
					 event64_t wait_event,
					 wait_interrupt_t interruptible,
					 wait_timeout_urgency_t urgency,
					 uint64_t deadline,
					 uint64_t leeway)
{
	wait_result_t ret;
	thread_t thread = FUNC0();
	spl_t s;

	if (!FUNC8(waitq))
		FUNC1("Invalid waitq: %p", waitq);

	if (FUNC5(waitq))
		s = FUNC2();

	FUNC6(waitq);
	ret = FUNC4(waitq, wait_event, interruptible,
					 urgency, deadline, leeway, thread);
	FUNC7(waitq);

	if (FUNC5(waitq))
		FUNC3(s);

	return ret;
}