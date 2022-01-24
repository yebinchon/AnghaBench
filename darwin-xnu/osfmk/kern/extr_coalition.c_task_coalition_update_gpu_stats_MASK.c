#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  TYPE_2__* task_t ;
typedef  TYPE_3__* coalition_t ;
struct TYPE_9__ {int /*<<< orphan*/  gpu_time; } ;
struct TYPE_11__ {TYPE_1__ r; } ;
struct TYPE_10__ {TYPE_3__** coalition; } ;

/* Variables and functions */
 TYPE_3__* COALITION_NULL ; 
 size_t COALITION_TYPE_RESOURCE ; 
 TYPE_2__* TASK_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

void FUNC3(task_t task, uint64_t gpu_ns_delta)
{
	coalition_t coal;

	FUNC0(task != TASK_NULL);
	if (gpu_ns_delta == 0)
		return;

	coal = task->coalition[COALITION_TYPE_RESOURCE];
	FUNC0(coal != COALITION_NULL);

	FUNC1(coal);
	coal->r.gpu_time += gpu_ns_delta;
	FUNC2(coal);
}