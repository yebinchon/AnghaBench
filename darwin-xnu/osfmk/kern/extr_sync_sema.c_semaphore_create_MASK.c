#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  TYPE_2__* semaphore_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_11__ {int count; TYPE_1__* owner; int /*<<< orphan*/  active; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  port; int /*<<< orphan*/  waitq; } ;
struct TYPE_10__ {int /*<<< orphan*/  semaphores_owned; int /*<<< orphan*/  semaphore_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_NULL ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_2__* SEMAPHORE_NULL ; 
 int SYNC_POLICY_DISABLE_IRQ ; 
 int SYNC_POLICY_MAX ; 
 TYPE_1__* TASK_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sema_refgrp ; 
 int /*<<< orphan*/  semaphore_zone ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 

kern_return_t
FUNC7(
	task_t			task,
	semaphore_t		*new_semaphore,
	int				policy,
	int				value)
{
	semaphore_t		 s = SEMAPHORE_NULL;
	kern_return_t		kret;


	*new_semaphore = SEMAPHORE_NULL;
	if (task == TASK_NULL || value < 0 || policy > SYNC_POLICY_MAX)
		return KERN_INVALID_ARGUMENT;

	s = (semaphore_t) FUNC5 (semaphore_zone);

	if (s == SEMAPHORE_NULL)
		return KERN_RESOURCE_SHORTAGE; 

	kret = FUNC4(&s->waitq, policy | SYNC_POLICY_DISABLE_IRQ); /* also inits lock */
	if (kret != KERN_SUCCESS) {
		FUNC6(semaphore_zone, s);
		return kret;
	}

	/*
	 * Initialize the semaphore values.
	 */
	s->port	= IP_NULL;
	FUNC1(&s->ref_count, &sema_refgrp);
	s->count = value;
	s->active = TRUE;
	s->owner = task;

	/*
	 *  Associate the new semaphore with the task by adding
	 *  the new semaphore to the task's semaphore list.
	 */
	FUNC2(task);
	FUNC0(&task->semaphore_list, (queue_entry_t) s);
	task->semaphores_owned++;
	FUNC3(task);

	*new_semaphore = s;

	return KERN_SUCCESS;
}