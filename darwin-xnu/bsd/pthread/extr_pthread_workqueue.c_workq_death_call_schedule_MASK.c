#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct workqueue {int /*<<< orphan*/  wq_death_call; int /*<<< orphan*/  wq_flags; } ;
struct TYPE_2__ {int abstime; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int THREAD_CALL_DELAY_LEEWAY ; 
 int THREAD_CALL_DELAY_USER_BACKGROUND ; 
 int TRACE_wq_death_call ; 
 int WQ_DEATH_CALL_SCHEDULED ; 
 int WQ_EXITING ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relaxed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__ wq_reduce_pool_window ; 

__attribute__((used)) static void
FUNC4(struct workqueue *wq, uint64_t deadline)
{
	uint32_t wq_flags = FUNC1(&wq->wq_flags, relaxed);

	if (wq_flags & (WQ_EXITING | WQ_DEATH_CALL_SCHEDULED)) {
		return;
	}
	FUNC2(&wq->wq_flags, WQ_DEATH_CALL_SCHEDULED, relaxed);

	FUNC0(TRACE_wq_death_call | DBG_FUNC_NONE, wq, 1, 0, 0, 0);

	/*
	 * <rdar://problem/13139182> Due to how long term timers work, the leeway
	 * can't be too short, so use 500ms which is long enough that we will not
	 * wake up the CPU for killing threads, but short enough that it doesn't
	 * fall into long-term timer list shenanigans.
	 */
	FUNC3(wq->wq_death_call, NULL, deadline,
			wq_reduce_pool_window.abstime / 10,
			THREAD_CALL_DELAY_LEEWAY | THREAD_CALL_DELAY_USER_BACKGROUND);
}