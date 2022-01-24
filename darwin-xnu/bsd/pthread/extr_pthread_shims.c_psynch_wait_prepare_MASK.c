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
typedef  int /*<<< orphan*/  thread_t ;
struct turnstile {int /*<<< orphan*/  ts_waitq; } ;
typedef  int /*<<< orphan*/  event_t ;
typedef  int /*<<< orphan*/  event64_t ;
typedef  int /*<<< orphan*/  block_hint_t ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_ABORTSAFE ; 
 int /*<<< orphan*/  TIMEOUT_URGENCY_USER_NORMAL ; 
 int TURNSTILE_DELAYED_UPDATE ; 
 int TURNSTILE_INHERITOR_THREAD ; 
 int /*<<< orphan*/  TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_PTHREAD_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct turnstile* FUNC3 (uintptr_t,struct turnstile**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct turnstile*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static wait_result_t
FUNC6(uintptr_t kwq, struct turnstile **tstore,
		thread_t owner, block_hint_t block_hint, uint64_t deadline)
{
	struct turnstile *ts;
	wait_result_t wr;

	if (tstore) {
		ts = FUNC3(kwq, tstore, TURNSTILE_NULL,
				TURNSTILE_PTHREAD_MUTEX);

		FUNC4(ts, owner,
				(TURNSTILE_DELAYED_UPDATE | TURNSTILE_INHERITOR_THREAD));

		FUNC2(FUNC1(), block_hint);

		wr = FUNC5(&ts->ts_waitq, (event64_t)kwq,
				THREAD_ABORTSAFE, TIMEOUT_URGENCY_USER_NORMAL, deadline, 0);
	} else {
		FUNC2(FUNC1(), block_hint);

		wr = FUNC0((event_t)kwq, THREAD_ABORTSAFE,
				TIMEOUT_URGENCY_USER_NORMAL, deadline, 0);
	}

	return wr;
}