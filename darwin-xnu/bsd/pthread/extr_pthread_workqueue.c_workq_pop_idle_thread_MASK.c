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
struct workqueue {int /*<<< orphan*/  wq_thidlecount; int /*<<< orphan*/  wq_threads_scheduled; int /*<<< orphan*/  wq_thrunlist; int /*<<< orphan*/  wq_thnewlist; int /*<<< orphan*/  wq_thidlelist; } ;
struct uthread {int uu_workq_flags; } ;

/* Variables and functions */
 struct uthread* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct uthread*,int /*<<< orphan*/ ) ; 
 int UT_WORKQ_DYING ; 
 int UT_WORKQ_OVERCOMMIT ; 
 int UT_WORKQ_RUNNING ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  uu_workq_entry ; 
 int /*<<< orphan*/  FUNC5 (struct workqueue*,int) ; 

__attribute__((used)) static struct uthread *
FUNC6(struct workqueue *wq)
{
	struct uthread *uth;

	if ((uth = FUNC0(&wq->wq_thidlelist))) {
		FUNC2(&wq->wq_thidlelist, uth, uu_workq_entry);
	} else {
		uth = FUNC0(&wq->wq_thnewlist);
		FUNC2(&wq->wq_thnewlist, uth, uu_workq_entry);
	}
	FUNC1(&wq->wq_thrunlist, uth, uu_workq_entry);

	FUNC4((uth->uu_workq_flags & UT_WORKQ_RUNNING) == 0);
	uth->uu_workq_flags |= UT_WORKQ_RUNNING | UT_WORKQ_OVERCOMMIT;
	wq->wq_threads_scheduled++;
	wq->wq_thidlecount--;

	if (FUNC3(uth->uu_workq_flags & UT_WORKQ_DYING)) {
		uth->uu_workq_flags ^= UT_WORKQ_DYING;
		FUNC5(wq, 1);
	}
	return uth;
}