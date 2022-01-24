#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* coalition_t ;
struct TYPE_11__ {int /*<<< orphan*/  active_count; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 TYPE_1__* COALITION_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*,void (*) (TYPE_1__*,void*,task_t)) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  iterate_tasks ; 

void FUNC6(coalition_t coal, void *ctx,
			     void (*callback)(coalition_t, void *, task_t))
{
	FUNC0(coal != COALITION_NULL);

	FUNC2("iterating tasks in coalition %p id:%llu type:%s, active_count:%u",
		 coal, coal->id, FUNC3(coal->type), coal->active_count);

	FUNC4(coal);

	FUNC1(coal, iterate_tasks, ctx, callback);

	FUNC5(coal);
}