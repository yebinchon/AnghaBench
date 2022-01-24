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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  KS_CURRENT_MEM_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_MALLOC_COUNT ; 
 int /*<<< orphan*/  KS_TOTAL_MEM_COUNT ; 
 int /*<<< orphan*/  KS_TOTAL_MEM_SIZE ; 
 scalar_t__ MEMORY_MAX_RETRY ; 
 int /*<<< orphan*/  MEMORY_SLEEP_TIME ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void *FUNC8(UINT size)
{
	void *addr;
	UINT retry = 0;
	size = FUNC3(size, 1);

	// KS
	FUNC2(KS_MALLOC_COUNT);
	FUNC2(KS_TOTAL_MEM_COUNT);
	FUNC1(KS_TOTAL_MEM_SIZE, size);
	FUNC2(KS_CURRENT_MEM_COUNT);

	// Attempt to allocate memory until success
	while (true)
	{
		if ((retry++) > MEMORY_MAX_RETRY)
		{
			FUNC0("InternalMalloc: error: malloc() failed.\n\n");
		}
		addr = FUNC4(size);
		if (addr != NULL)
		{
			break;
		}

		FUNC5(MEMORY_SLEEP_TIME);
	}

	FUNC7(FUNC6(addr), "MEM", size);

	return addr;
}