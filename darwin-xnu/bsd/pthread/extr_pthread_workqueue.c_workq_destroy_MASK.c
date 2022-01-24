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
struct workqueue {int /*<<< orphan*/  wq_lock; int /*<<< orphan*/  wq_turnstile; } ;
struct turnstile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (uintptr_t,int /*<<< orphan*/ *,struct turnstile**) ; 
 int /*<<< orphan*/  FUNC4 (struct turnstile*) ; 
 int /*<<< orphan*/  workq_lck_grp ; 
 int /*<<< orphan*/  workq_zone_workqueue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct workqueue*) ; 

void
FUNC6(struct workqueue *wq)
{
	struct turnstile *ts;

	FUNC3((uintptr_t)wq, &wq->wq_turnstile, &ts);
	FUNC0(ts);
	FUNC2();
	FUNC4(ts);

	FUNC1(&wq->wq_lock, workq_lck_grp);
	FUNC5(workq_zone_workqueue, wq);
}