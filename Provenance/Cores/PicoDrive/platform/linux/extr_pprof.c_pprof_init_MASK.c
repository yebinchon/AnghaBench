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
typedef  int key_t ;

/* Variables and functions */
 int IPC_CREAT ; 
 int IPC_EXCL ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* pp_counters ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 void* FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int shmemid ; 
 int FUNC6 (int,int,int) ; 

void FUNC7(void)
{
	int this_is_new_shmem = 1;
	key_t shmemkey;
	void *shmem;

#ifndef PPROF_TOOL
	unsigned int tmp = FUNC3();
	FUNC4("pprof: measured diff is %u\n", FUNC3() - tmp);
#endif

	shmemkey = FUNC0(".", 0x02ABC32E);
	if (shmemkey == -1)
	{
		FUNC2("pprof: ftok failed");
		return;
	}

#ifndef PPROF_TOOL
	shmemid = FUNC6(shmemkey, sizeof(*pp_counters),
		IPC_CREAT | IPC_EXCL | 0644);
	if (shmemid == -1)
#endif
	{
		shmemid = FUNC6(shmemkey, sizeof(*pp_counters),
				0644);
		if (shmemid == -1)
		{
			FUNC2("pprof: shmget failed");
			return;
		}
		this_is_new_shmem = 0;
	}

	shmem = FUNC5(shmemid, NULL, 0);
	if (shmem == (void *)-1)
	{
		FUNC2("pprof: shmat failed");
		return;
	}

	pp_counters = shmem;
	if (this_is_new_shmem) {
		FUNC1(pp_counters, 0, sizeof(*pp_counters));
		FUNC4("pprof: pp_counters cleared.\n");
	}
}