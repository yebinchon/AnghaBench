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
typedef  int uint32_t ;
struct workqueue {int /*<<< orphan*/  wq_flags; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART ; 
 int WQ_DELAYED_CALL_PENDED ; 
 int WQ_EXITING ; 
 int WQ_IMMEDIATE_CALL_PENDED ; 
 int WQ_PROC_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct workqueue* FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  relaxed ; 
 int /*<<< orphan*/  FUNC4 (struct workqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct workqueue*) ; 

void
FUNC6(struct proc *p)
{
	struct workqueue *wq = FUNC3(p);
	uint32_t wq_flags;

	if (!wq) return;

	wq_flags = FUNC2(&wq->wq_flags, ~(WQ_PROC_SUSPENDED |
			WQ_DELAYED_CALL_PENDED | WQ_IMMEDIATE_CALL_PENDED), relaxed);
	if ((wq_flags & WQ_EXITING) == 0) {
		FUNC0();
		if (wq_flags & WQ_IMMEDIATE_CALL_PENDED) {
			FUNC5(wq);
		} else if (wq_flags & WQ_DELAYED_CALL_PENDED) {
			FUNC4(wq,
					WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART);
		}
		FUNC1();
	}
}