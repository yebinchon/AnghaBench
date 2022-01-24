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
typedef  scalar_t__ thread_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  event64_t ;

/* Variables and functions */
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  WAITQ_KEEP_LOCKED ; 
 int /*<<< orphan*/  WAITQ_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct waitq*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*) ; 
 scalar_t__ FUNC10 (struct waitq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

thread_t
FUNC11(struct waitq    *waitq,
                        event64_t       wake_event,
                        wait_result_t   result,
                        int             priority)
{
	uint64_t reserved_preposts = 0;
	spl_t thread_spl = 0;
	thread_t thread;
	spl_t spl;

	if (!FUNC9(waitq))
		FUNC0("Invalid waitq: %p", waitq);

	if (!FUNC5(waitq)) {
		/* reserve preposts in addition to locking waitq */
		reserved_preposts = FUNC8(waitq, 0, WAITQ_KEEP_LOCKED);
	} else {
		spl = FUNC1();
		FUNC6(waitq);
	}

	thread = FUNC10(waitq, wake_event, result,
	                                        &thread_spl, &reserved_preposts,
	                                        priority, WAITQ_UNLOCK);
	/* waitq is unlocked, thread is locked */

	if (thread != THREAD_NULL) {
		FUNC3(thread);
		FUNC4(thread);
		FUNC2(thread_spl);
	}
	
	if (FUNC5(waitq))
			FUNC2(spl);

	/* release any left-over prepost object (won't block/lock anything) */
	FUNC7(reserved_preposts);

	/* returns +1 ref to running thread or THREAD_NULL */
	return thread;
}