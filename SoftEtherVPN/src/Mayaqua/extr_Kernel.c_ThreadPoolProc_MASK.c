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
typedef  size_t UINT ;
struct TYPE_11__ {char* Name; int Stopped; int PoolHalting; int /*<<< orphan*/  release_event; TYPE_1__* ref; int /*<<< orphan*/  PoolWaitList; int /*<<< orphan*/  ThreadId; int /*<<< orphan*/  param; } ;
struct TYPE_10__ {TYPE_3__* Thread; int /*<<< orphan*/  (* ThreadProc ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * InitFinishEvent; int /*<<< orphan*/  Event; } ;
struct TYPE_9__ {int /*<<< orphan*/  c; } ;
typedef  TYPE_2__ THREAD_POOL_DATA ;
typedef  TYPE_3__ THREAD ;
typedef  int /*<<< orphan*/  EVENT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int INFINITE ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ ** FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_count ; 
 int /*<<< orphan*/  thread_pool ; 

void FUNC20(THREAD *t, void *param)
{
	THREAD_POOL_DATA *pd;
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	pd = (THREAD_POOL_DATA *)param;

	FUNC8(t);

	while (true)
	{
		THREAD *thread;
		UINT i, num;
		EVENT **ee;

		// Wait for the next job
		FUNC18(pd->Event, INFINITE);

		if (pd->ThreadProc == NULL)
		{
			// Stop the pool thread
			break;
		}

		thread = pd->Thread;
		thread->ThreadId = FUNC14();

		// Initialization is completed
		FUNC12(pd->InitFinishEvent);

		// Set the thread name
		if (thread->Name != NULL)
		{
			FUNC13(thread->ThreadId, thread->Name, thread->param);
		}
		else
		{
			FUNC13(thread->ThreadId, "Unknown", 0);
		}

		// Run the thread procedure
		pd->ThreadProc(pd->Thread, thread->param);

		// Set the thread name
		FUNC13(thread->ThreadId, NULL, 0);

		pd->Thread->Stopped = true;

		thread->PoolHalting = true;

		// Set the waiting event list
		FUNC5(thread->PoolWaitList);
		{
			num = FUNC4(thread->PoolWaitList);
			ee = FUNC15(thread->PoolWaitList);

			FUNC2(thread->PoolWaitList);
		}
		FUNC16(thread->PoolWaitList);

		for (i = 0;i < num;i++)
		{
			EVENT *e = ee[i];

			FUNC12(e);
			FUNC10(e);
		}

		FUNC3(ee);

		while (true)
		{
			if (FUNC0(thread->ref->c) <= 1)
			{
				break;
			}

			FUNC18(thread->release_event, 256);
		}

		FUNC11(thread);

#ifdef	OS_WIN32
		// For Win32: Recover the priority of the thread
		MsRestoreThreadPriority();
#endif	// OS_WIN32

		// Register the thread itself to the thread pool
		FUNC6(thread_pool);
		{
			FUNC9(thread_pool, t);
		}
		FUNC17(thread_pool);

		FUNC1(thread_count);
	}
}