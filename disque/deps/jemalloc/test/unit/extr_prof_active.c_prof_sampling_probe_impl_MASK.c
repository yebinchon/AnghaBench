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
 int /*<<< orphan*/  FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(bool expect_sample, const char *func, int line)
{
	void *p;
	size_t expected_backtraces = expect_sample ? 1 : 0;

	FUNC1(FUNC4(), 0, "%s():%d: Expected 0 backtraces", func,
	    line);
	p = FUNC3(1, 0);
	FUNC0(p, "Unexpected mallocx() failure");
	FUNC1(FUNC4(), expected_backtraces,
	    "%s():%d: Unexpected backtrace count", func, line);
	FUNC2(p, 0);
}