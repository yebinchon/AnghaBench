#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct waitq_set {int dummy; } ;
typedef  TYPE_1__* ipc_mqueue_t ;
struct TYPE_4__ {struct waitq_set imq_set_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq_set*) ; 

void
FUNC4(ipc_mqueue_t	mqueue)
{
	struct waitq_set *mq_setq = &mqueue->imq_set_queue;

	FUNC1(mqueue);
	FUNC0(FUNC3(mq_setq));
	FUNC2(mq_setq);
	/* mqueue unlocked set links deallocated */
}