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
typedef  int /*<<< orphan*/  uint64_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  event64_t ;

/* Variables and functions */
 int /*<<< orphan*/  WAITQ_KEEP_LOCKED ; 
 int /*<<< orphan*/  WAITQ_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct waitq*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

kern_return_t FUNC9(struct waitq *waitq,
				 event64_t wake_event,
				 wait_result_t result,
				 int priority)
{
	kern_return_t ret;
	uint64_t reserved_preposts = 0;
	spl_t s;

	if (!FUNC7(waitq))
		FUNC0("Invalid waitq: %p", waitq);

	if (!FUNC3(waitq)) {
		/* reserve preposts in addition to locking waitq */
		reserved_preposts = FUNC6(waitq, 0,
		                                          WAITQ_KEEP_LOCKED);
	} else {
		s = FUNC1();
		FUNC4(waitq);
	}

	ret = FUNC8(waitq, wake_event, result,
					&reserved_preposts, priority,
					WAITQ_UNLOCK);

	if (FUNC3(waitq))
		FUNC2(s);

	FUNC5(reserved_preposts);

	return ret;

}