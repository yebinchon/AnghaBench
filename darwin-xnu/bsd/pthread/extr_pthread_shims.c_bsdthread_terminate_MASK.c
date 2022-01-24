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
typedef  int /*<<< orphan*/  thread_t ;
struct proc {int dummy; } ;
struct bsdthread_terminate_args {int /*<<< orphan*/  sem; int /*<<< orphan*/  port; int /*<<< orphan*/  freesize; int /*<<< orphan*/  stackaddr; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int (* bsdthread_terminate ) (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int THREAD_TAG_WORKQUEUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pthread_functions ; 
 int FUNC2 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct proc *p, struct bsdthread_terminate_args *uap, int32_t *retval)
{
	thread_t th = FUNC0();
	if (FUNC3(th) & THREAD_TAG_WORKQUEUE) {
		FUNC4(p, FUNC1(th));
	}
	return pthread_functions->bsdthread_terminate(p, uap->stackaddr, uap->freesize, uap->port, uap->sem, retval);
}