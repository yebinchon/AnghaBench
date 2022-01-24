#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {int t_flags; } ;

/* Variables and functions */
 int TF_CA_CLIENT_WI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

bool
FUNC2(
		task_t task,
		boolean_t set_or_clear)
{
	bool ret = true;
	FUNC0(task);
	if (set_or_clear) {
		/* Tasks can have only one CA_CLIENT work interval */
		if (task->t_flags & TF_CA_CLIENT_WI)
			ret = false;
		else
			task->t_flags |= TF_CA_CLIENT_WI;
	} else {
		task->t_flags &= ~TF_CA_CLIENT_WI;
	}
	FUNC1(task);
	return ret;
}