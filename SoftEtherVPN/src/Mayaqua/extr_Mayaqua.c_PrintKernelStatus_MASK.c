#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  KS_CURRENT_LOCKED_COUNT ; 
 int /*<<< orphan*/  KS_CURRENT_LOCK_COUNT ; 
 int /*<<< orphan*/  KS_CURRENT_MEM_COUNT ; 
 int /*<<< orphan*/  KS_CURRENT_REFED_COUNT ; 
 int /*<<< orphan*/  KS_CURRENT_REF_COUNT ; 
 int /*<<< orphan*/  KS_DELETELOCK_COUNT ; 
 int /*<<< orphan*/  KS_FREEREF_COUNT ; 
 int /*<<< orphan*/  KS_FREETHREAD_COUNT ; 
 int /*<<< orphan*/  KS_FREE_COUNT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_GETTICK_COUNT ; 
 int /*<<< orphan*/  KS_GETTIME_COUNT ; 
 int /*<<< orphan*/  KS_MALLOC_COUNT ; 
 int /*<<< orphan*/  KS_MEMPOOL_CURRENT_NUM ; 
 int /*<<< orphan*/  KS_MEMPOOL_MALLOC_COUNT ; 
 int /*<<< orphan*/  KS_MEMPOOL_REALLOC_COUNT ; 
 int /*<<< orphan*/  KS_NEWLOCK_COUNT ; 
 int /*<<< orphan*/  KS_NEWREF_COUNT ; 
 int /*<<< orphan*/  KS_NEWTHREAD_COUNT ; 
 int /*<<< orphan*/  KS_REALLOC_COUNT ; 
 int /*<<< orphan*/  KS_TOTAL_MEM_COUNT ; 
 int /*<<< orphan*/  KS_TOTAL_MEM_SIZE ; 
 int /*<<< orphan*/  KS_WAIT_COUNT ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int g_memcheck ; 

void FUNC6()
{
	bool leaked = false;

	FUNC5("\n");
	FUNC5(
		"     --------- Mayaqua Kernel Status ---------\n"
		"        Malloc Count ............... %u\n"
		"        ReAlloc Count .............. %u\n"
		"        Free Count ................. %u\n"
		"        Total Memory Size .......... %I64u bytes\n"
		"      * Current Memory Blocks ...... %u Blocks (Peek: %u)\n"
		"        Total Memory Blocks ........ %u Blocks\n"
		"      * Current MemPool Blocks ..... %u Blocks (Peek: %u)\n"
		"        Total MemPool Mallocs ...... %u Mallocs\n"
		"        Total MemPool ReAllocs ..... %u ReAllocs\n"
		"        NewLock Count .............. %u\n"
		"        DeleteLock Count ........... %u\n"
		"      * Current Lock Objects ....... %u Objects\n"
		"      * Current Locked Objects ..... %u Objects\n"
		"        NewRef Count ............... %u\n"
		"        FreeRef Count .............. %u\n"
		"      * Current Ref Objects ........ %u Objects\n"
		"      * Current Ref Count .......... %u Refs\n"
		"        GetTime Count .............. %u\n"
		"        GetTick Count .............. %u\n"
		"        NewThread Count ............ %u\n"
		"        FreeThread Count ........... %u\n"
		"      * Current Threads ............ %u Threads\n"
		"        Wait For Event Count ....... %u\n\n",
		FUNC2(KS_MALLOC_COUNT),
		FUNC2(KS_REALLOC_COUNT),
		FUNC2(KS_FREE_COUNT),
		FUNC3(KS_TOTAL_MEM_SIZE),
		FUNC2(KS_CURRENT_MEM_COUNT),
		FUNC4(KS_CURRENT_MEM_COUNT),
		FUNC2(KS_TOTAL_MEM_COUNT),
		FUNC2(KS_MEMPOOL_CURRENT_NUM),
		FUNC4(KS_MEMPOOL_CURRENT_NUM),
		FUNC2(KS_MEMPOOL_MALLOC_COUNT),
		FUNC2(KS_MEMPOOL_REALLOC_COUNT),
		FUNC2(KS_NEWLOCK_COUNT),
		FUNC2(KS_DELETELOCK_COUNT),
		FUNC2(KS_CURRENT_LOCK_COUNT),
		FUNC2(KS_CURRENT_LOCKED_COUNT),
		FUNC2(KS_NEWREF_COUNT),
		FUNC2(KS_FREEREF_COUNT),
		FUNC2(KS_CURRENT_REF_COUNT),
		FUNC2(KS_CURRENT_REFED_COUNT),
		FUNC2(KS_GETTIME_COUNT),
		FUNC2(KS_GETTICK_COUNT),
		FUNC2(KS_NEWTHREAD_COUNT),
		FUNC2(KS_FREETHREAD_COUNT),
		FUNC2(KS_NEWTHREAD_COUNT) - FUNC2(KS_FREETHREAD_COUNT),
		FUNC2(KS_WAIT_COUNT)
		);

	if (FUNC2(KS_CURRENT_MEM_COUNT) != 0 || FUNC2(KS_CURRENT_LOCK_COUNT) != 0 ||
		FUNC2(KS_MEMPOOL_CURRENT_NUM) != 0 ||
		FUNC2(KS_CURRENT_LOCKED_COUNT) != 0 || FUNC2(KS_CURRENT_REF_COUNT) != 0)
	{
		leaked = true;
	}

	if (leaked)
	{
		FUNC5("      !!! MEMORY LEAKS DETECTED !!!\n\n");
		if (g_memcheck == false)
		{
			if (FUNC1())
			{
				FUNC5("    Enable /memcheck startup option to see the leaking memory heap.\n");
				FUNC5("    Press Enter key to exit the process.\n");
			}
			FUNC0(NULL, 0);
		}
	}
	else
	{
		FUNC5("        @@@ NO MEMORY LEAKS @@@\n\n");
	}
}