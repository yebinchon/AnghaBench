#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int PoolThread; int /*<<< orphan*/  ref; int /*<<< orphan*/  Name; void* release_event; struct TYPE_9__* PoolHostThread; int /*<<< orphan*/  PoolWaitList; void* init_finished_event; int /*<<< orphan*/ * pData; void* param; int /*<<< orphan*/ * thread_proc; } ;
struct TYPE_8__ {void* InitFinishEvent; void* Event; TYPE_2__* Thread; int /*<<< orphan*/ * ThreadProc; } ;
typedef  int /*<<< orphan*/  THREAD_PROC ;
typedef  TYPE_1__ THREAD_POOL_DATA ;
typedef  TYPE_2__ THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  ThreadPoolProc ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  current_num_thread ; 
 int /*<<< orphan*/  thread_count ; 
 int /*<<< orphan*/  thread_pool ; 

THREAD *FUNC15(THREAD_PROC *thread_proc, void *param, char *name)
{
	THREAD *host = NULL;
	THREAD_POOL_DATA *pd = NULL;
	THREAD *ret;
	// Validate arguments
	if (thread_proc == NULL)
	{
		return NULL;
	}

	FUNC2(thread_count);

	FUNC4(thread_pool);
	{
		// Examine whether there is a thread that is currently vacant in the pool
		host = FUNC9(thread_pool);
	}
	FUNC11(thread_pool);

	if (host == NULL)
	{
		// Create a new thread because a vacant thread is not found
		pd = FUNC14(sizeof(THREAD_POOL_DATA));
		pd->Event = FUNC5();
		pd->InitFinishEvent = FUNC5();
		host = FUNC8(ThreadPoolProc, pd);
		FUNC13(host);
	}
	else
	{
		pd = (THREAD_POOL_DATA *)host->param;
	}

	// Creating a thread pool
	ret = FUNC14(sizeof(THREAD));
	ret->ref = FUNC7();
	ret->thread_proc = thread_proc;
	ret->param = param;
	ret->pData = NULL;
	ret->init_finished_event = FUNC5();
	ret->PoolThread = true;
	ret->PoolWaitList = FUNC6(NULL);
	ret->PoolHostThread = host;
	ret->release_event = FUNC5();

	if (FUNC3(name) == false)
	{
		ret->Name = FUNC1(name);
	}

	// Run
	pd->ThreadProc = thread_proc;
	pd->Thread = ret;
	FUNC0(ret->ref);

	FUNC10(pd->Event);

	FUNC12(pd->InitFinishEvent, INFINITE);

	current_num_thread++;

//	Debug("current_num_thread = %u\n", current_num_thread);

	return ret;
}