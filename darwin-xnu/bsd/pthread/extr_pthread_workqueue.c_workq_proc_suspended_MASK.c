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
struct workqueue {int /*<<< orphan*/  wq_flags; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WQ_PROC_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct workqueue* FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  relaxed ; 

void
FUNC2(struct proc *p)
{
	struct workqueue *wq = FUNC1(p);

	if (wq) FUNC0(&wq->wq_flags, WQ_PROC_SUSPENDED, relaxed);
}