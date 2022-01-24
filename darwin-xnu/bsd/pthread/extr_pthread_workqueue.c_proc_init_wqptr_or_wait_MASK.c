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
struct proc {struct workqueue* p_wqptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 struct workqueue* WQPTR_IS_INITING_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct workqueue**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(struct proc *p)
{
	struct workqueue *wq;

	FUNC1(p);
	wq = p->p_wqptr;

	if (wq == NULL) {
		p->p_wqptr = WQPTR_IS_INITING_VALUE;
		FUNC2(p);
		return true;
	}

	if (wq == WQPTR_IS_INITING_VALUE) {
		FUNC0(&p->p_wqptr, THREAD_UNINT);
		FUNC2(p);
		FUNC3(THREAD_CONTINUE_NULL);
	} else {
		FUNC2(p);
	}
	return false;
}