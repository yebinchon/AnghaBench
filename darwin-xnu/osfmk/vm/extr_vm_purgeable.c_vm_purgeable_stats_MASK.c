#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_purgeable_info_t ;
typedef  int /*<<< orphan*/  task_t ;
typedef  int /*<<< orphan*/ * purgeable_q_t ;
struct TYPE_3__ {int /*<<< orphan*/  obsolete_data; int /*<<< orphan*/ * lifo_data; int /*<<< orphan*/ * fifo_data; } ;

/* Variables and functions */
 int NUM_VOLATILE_GROUPS ; 
 size_t PURGEABLE_Q_TYPE_FIFO ; 
 size_t PURGEABLE_Q_TYPE_LIFO ; 
 size_t PURGEABLE_Q_TYPE_OBSOLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * purgeable_queues ; 
 int /*<<< orphan*/  vm_purgeable_queue_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void
FUNC3(vm_purgeable_info_t info, task_t target_task)
{
	purgeable_q_t	queue;
	int             group;

	FUNC0(&vm_purgeable_queue_lock);
	
	/* Populate fifo_data */
	queue = &purgeable_queues[PURGEABLE_Q_TYPE_FIFO];
	for (group = 0; group < NUM_VOLATILE_GROUPS; group++)
		FUNC2(&(info->fifo_data[group]), queue, group, target_task);
	
	/* Populate lifo_data */
	queue = &purgeable_queues[PURGEABLE_Q_TYPE_LIFO];
	for (group = 0; group < NUM_VOLATILE_GROUPS; group++)
		FUNC2(&(info->lifo_data[group]), queue, group, target_task);

	/* Populate obsolete data */
	queue = &purgeable_queues[PURGEABLE_Q_TYPE_OBSOLETE];
	FUNC2(&(info->obsolete_data), queue, 0, target_task);

	FUNC1(&vm_purgeable_queue_lock);
	return;
}