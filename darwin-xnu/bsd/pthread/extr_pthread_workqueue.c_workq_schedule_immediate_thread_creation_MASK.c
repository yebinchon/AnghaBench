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
struct workqueue {int /*<<< orphan*/  wq_immediate_call; int /*<<< orphan*/  wq_reqcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_wq_start_add_timer ; 
 int /*<<< orphan*/  WQ_IMMEDIATE_CALL_PENDED ; 
 uintptr_t WQ_IMMEDIATE_CALL_SCHEDULED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct workqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (struct workqueue*,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct workqueue *wq)
{
	FUNC2(!FUNC4());

	if (FUNC6(wq, WQ_IMMEDIATE_CALL_SCHEDULED,
			WQ_IMMEDIATE_CALL_PENDED, 0)) {
		FUNC0(TRACE_wq_start_add_timer, wq, wq->wq_reqcount,
				FUNC1(wq), 0, 0);

		uintptr_t arg = WQ_IMMEDIATE_CALL_SCHEDULED;
		if (FUNC5(wq->wq_immediate_call, (void *)arg)) {
			FUNC3("immediate_call was already enqueued");
		}
	}
}