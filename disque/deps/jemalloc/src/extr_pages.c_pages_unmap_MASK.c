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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFERROR_BUF ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (void*,size_t) ; 
 scalar_t__ opt_abort ; 

void
FUNC6(void *addr, size_t size)
{

#ifdef _WIN32
	if (VirtualFree(addr, 0, MEM_RELEASE) == 0)
#else
	if (FUNC5(addr, size) == -1)
#endif
	{
		char buf[BUFERROR_BUF];

		FUNC2(FUNC3(), buf, sizeof(buf));
		FUNC4("<jemalloc>: Error in "
#ifdef _WIN32
		              "VirtualFree"
#else
		              "munmap"
#endif
		              "(): %s\n", buf);
		if (opt_abort)
			FUNC1();
	}
}