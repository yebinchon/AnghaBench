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
struct TYPE_4__ {struct TYPE_4__* Name; int /*<<< orphan*/  PoolWaitList; int /*<<< orphan*/  release_event; int /*<<< orphan*/  init_finished_event; } ;
typedef  TYPE_1__ THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_num_thread ; 

void FUNC3(THREAD *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	FUNC1(t->init_finished_event);
	FUNC1(t->release_event);
	FUNC2(t->PoolWaitList);

	if (t->Name != NULL)
	{
		FUNC0(t->Name);
	}

	FUNC0(t);

	current_num_thread--;
	//Debug("current_num_thread = %u\n", current_num_thread);
}