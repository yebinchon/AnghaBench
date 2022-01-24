#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  thread_call_t ;
struct workqueue {int wq_thread_call_last_run; int wq_timer_interval; int /*<<< orphan*/  wq_delayed_call; int /*<<< orphan*/  wq_reqcount; } ;
struct TYPE_4__ {int abstime; } ;
struct TYPE_3__ {int abstime; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_wq_start_add_timer ; 
 int WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART ; 
 int /*<<< orphan*/  WQ_DELAYED_CALL_PENDED ; 
 uintptr_t WQ_DELAYED_CALL_SCHEDULED ; 
 int WQ_IMMEDIATE_CALL_PENDED ; 
 int WQ_IMMEDIATE_CALL_SCHEDULED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct workqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct workqueue*,uintptr_t,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ wq_max_timer_interval ; 
 TYPE_1__ wq_stalled_window ; 

__attribute__((used)) static bool
FUNC8(struct workqueue *wq, int flags)
{
	FUNC2(!FUNC5());

	if (!FUNC7(wq, WQ_DELAYED_CALL_SCHEDULED,
			WQ_DELAYED_CALL_PENDED, WQ_IMMEDIATE_CALL_PENDED |
			WQ_IMMEDIATE_CALL_SCHEDULED)) {
		return false;
	}

	uint64_t now = FUNC3();

	if (flags & WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART) {
		/* do not change the window */
	} else if (now - wq->wq_thread_call_last_run <= wq->wq_timer_interval) {
		wq->wq_timer_interval *= 2;
		if (wq->wq_timer_interval > wq_max_timer_interval.abstime) {
			wq->wq_timer_interval = wq_max_timer_interval.abstime;
		}
	} else if (now - wq->wq_thread_call_last_run > 2 * wq->wq_timer_interval) {
		wq->wq_timer_interval /= 2;
		if (wq->wq_timer_interval < wq_stalled_window.abstime) {
			wq->wq_timer_interval = wq_stalled_window.abstime;
		}
	}

	FUNC0(TRACE_wq_start_add_timer, wq, wq->wq_reqcount,
			FUNC1(wq), wq->wq_timer_interval, 0);

	thread_call_t call = wq->wq_delayed_call;
	uintptr_t arg = WQ_DELAYED_CALL_SCHEDULED;
	uint64_t deadline = now + wq->wq_timer_interval;
	if (FUNC6(call, (void *)arg, deadline)) {
		FUNC4("delayed_call was already enqueued");
	}
	return true;
}