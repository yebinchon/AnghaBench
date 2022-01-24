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
typedef  TYPE_1__* task_t ;
struct TYPE_4__ {scalar_t__* coalition; } ;

/* Variables and functions */
 int COALITION_NUM_TYPES ; 
 int COALITION_TYPE_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 

void
FUNC2(task_t task)
{
	int i;
	for (i = 0; i < COALITION_NUM_TYPES; i++) {
		if (task->coalition[i]) {
			FUNC0(task->coalition[i]);
		} else if (i == COALITION_TYPE_RESOURCE) {
			FUNC1("deallocating task %p was not a member of a resource coalition", task);
		}
	}
}