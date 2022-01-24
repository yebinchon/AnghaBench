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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint16_t ;
struct workqueue {scalar_t__ wq_thdying_count; int wq_thidlecount; } ;
struct TYPE_3__ {scalar_t__ idle_stamp; } ;
struct TYPE_4__ {TYPE_1__ uus_workq_park_data; } ;
struct uthread {TYPE_2__ uu_save; int /*<<< orphan*/  uu_workq_flags; } ;

/* Variables and functions */
 int DBG_FUNC_START ; 
 int TRACE_wq_thread_terminate ; 
 int /*<<< orphan*/  UT_WORKQ_DYING ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct workqueue*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct workqueue*) ; 
 struct uthread* FUNC5 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct uthread*) ; 

__attribute__((used)) static void
FUNC7(struct workqueue *wq, uint16_t decrement)
{
	struct uthread *uth;

	FUNC1(wq->wq_thdying_count >= decrement);
	if ((wq->wq_thdying_count -= decrement) > 0)
		return;

	if (wq->wq_thidlecount <= 1)
		return;

	if ((uth = FUNC5(wq)) == NULL)
		return;

	uint64_t now = FUNC2();
	uint64_t delay = FUNC4(wq);

	if (now - uth->uu_save.uus_workq_park_data.idle_stamp > delay) {
		FUNC0(TRACE_wq_thread_terminate | DBG_FUNC_START,
				wq, wq->wq_thidlecount, 0, 0, 0);
		wq->wq_thdying_count++;
		uth->uu_workq_flags |= UT_WORKQ_DYING;
		FUNC6(uth);
		return;
	}

	FUNC3(wq,
			uth->uu_save.uus_workq_park_data.idle_stamp + delay);
}