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
typedef  int /*<<< orphan*/  memsize ;
typedef  int /*<<< orphan*/  memorystatus_level ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MEGABYTE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int need_mb)
{
	int64_t		memsize;
	int		memorystatus_level;
	size_t		size;
	int64_t		avail;
	int		err;
	int		try;

	/*
	 * get amount of memory in the machine
	 */
	size = sizeof(memsize);
	err = FUNC7("hw.memsize", &memsize, &size, NULL, 0);
	T_QUIET; FUNC3(err, "sysctlbyname(hw.memsize...) failed");

	/*
	 * Use a loop to briefly sleep and recheck if short on memory.
	 */
	try = 1;
	for (;;) {

		/*
		 * memorystatus_level is a percentage of memory available. For example 20 means 1/5 of memory.
		 * It currently doesn't exist on macOS but neither does jetsam, so pass the test there.
		 */
		size = sizeof(memorystatus_level);
		if (FUNC7("kern.memorystatus_level", &memorystatus_level, &size, NULL, 0) != 0)
			return;
		T_QUIET; FUNC2(memorystatus_level, 100, "memorystatus_level too high");
		T_QUIET; FUNC1(memorystatus_level, 0, "memorystatus_level negative");

		/*
		 * jetsam kicks in at memory status level of 15%, so subtract that much out of what's available.
		 */
		avail = FUNC0(0, (memsize * (memorystatus_level - 15)) / 100);

		/*
		 * We're good to go if there's more than enough available.
		 */
		if ((int64_t)need_mb * MEGABYTE < avail)
			return;

		/*
		 * issue a message to log and sleep briefly to see if we can get more memory
		 */
		if (try-- == 0)
			break;
		FUNC4("Need %d MB, only %d MB available. sleeping 5 seconds for more to free. memorystatus_level %d",
		    need_mb, (int)(avail / MEGABYTE), memorystatus_level);
		FUNC6(5);
	}
	FUNC5("Needed %d MB, but only %d MB available. Skipping test to avoid jetsam issues.",
	    need_mb, (int)(avail / MEGABYTE));
}