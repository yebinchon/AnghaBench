#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ param; } ;
struct TYPE_7__ {int /*<<< orphan*/  InitFinishEvent; int /*<<< orphan*/  Event; int /*<<< orphan*/ * ThreadProc; } ;
typedef  TYPE_1__ THREAD_POOL_DATA ;
typedef  TYPE_2__ THREAD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/ * thread_count ; 
 int /*<<< orphan*/  thread_pool ; 

void FUNC10()
{
	while (true)
	{
		if (FUNC0(thread_count) == 0)
		{
			break;
		}

		FUNC8(25);
	}

	while (true)
	{
		THREAD_POOL_DATA *pd;
		THREAD *t = FUNC3(thread_pool);

		if (t == NULL)
		{
			break;
		}

		pd = (THREAD_POOL_DATA *)t->param;

		pd->ThreadProc = NULL;
		FUNC7(pd->Event);

		FUNC9(t);

		pd = (THREAD_POOL_DATA *)t->param;
		FUNC4(pd->Event);
		FUNC4(pd->InitFinishEvent);

		FUNC6(t);

		FUNC2(pd);
	}

	FUNC5(thread_pool);

	FUNC1(thread_count);
	thread_count = NULL;
}