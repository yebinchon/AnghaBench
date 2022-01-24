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
struct workqueue {int dummy; } ;
struct proc {int /*<<< orphan*/  p_wqptr; } ;

/* Variables and functions */
 struct workqueue* WQPTR_IS_INITING_VALUE ; 
 struct workqueue* FUNC0 (int /*<<< orphan*/ *,struct workqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  release ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct proc *p, struct workqueue *wq)
{
	wq = FUNC0(&p->p_wqptr, wq, release);
	if (wq == WQPTR_IS_INITING_VALUE) {
		FUNC1(p);
		FUNC3(&p->p_wqptr);
		FUNC2(p);
	}
}