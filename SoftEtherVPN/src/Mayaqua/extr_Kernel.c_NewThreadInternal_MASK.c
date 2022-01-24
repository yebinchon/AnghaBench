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
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/ * thread_proc; int /*<<< orphan*/  ref; void* param; int /*<<< orphan*/  init_finished_event; } ;
typedef  int /*<<< orphan*/  THREAD_PROC ;
typedef  TYPE_1__ THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_NEWTHREAD_COUNT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

THREAD *FUNC8(THREAD_PROC *thread_proc, void *param)
{
	THREAD *t;
	UINT retry = 0;
	// Validate arguments
	if (thread_proc == NULL)
	{
		return NULL;
	}

	// Initialize Thread object
	t = FUNC6(sizeof(THREAD));
	t->init_finished_event = FUNC2();

	t->param = param;
	t->ref = FUNC3();
	t->thread_proc = thread_proc;

	// Wait until the OS to initialize the thread
	while (true)
	{
		if ((retry++) > 60)
		{
			FUNC7("\n\n*** error: new thread create failed.\n\n");
			FUNC0();
		}
		if (FUNC4(t))
		{
			break;
		}
		FUNC5(500);
	}

	// KS
	FUNC1(KS_NEWTHREAD_COUNT);

	return t;
}