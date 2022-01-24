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
typedef  TYPE_1__* atm_task_descriptor_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_TASK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(atm_task_descriptor_t task_descriptor)
{
	/* Mark the task dead in the task descriptor to make task descriptor eligible for cleanup. */
	FUNC1(&task_descriptor->lock);
	task_descriptor->flags = ATM_TASK_DEAD;
	FUNC2(&task_descriptor->lock);

	FUNC0(task_descriptor);
}