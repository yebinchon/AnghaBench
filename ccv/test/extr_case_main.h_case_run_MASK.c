#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* dir; char* name; int /*<<< orphan*/  (* func ) (char*,int*) ;} ;
typedef  TYPE_1__ case_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int*) ; 

__attribute__((used)) static void FUNC8(case_t* test_case, const char* const match_test, int i, int total, int* pass, int* skip, int* fail)
{
	// Change the current directory.
	if (test_case->dir && test_case->dir[0] != 0 && FUNC6(test_case->dir, ".") != 0)
		FUNC1(test_case->dir);
	int clr = 0;
	if (FUNC4(FUNC3(stdout)))
	{
		clr += FUNC5("\033[0;34m[%d/%d]\033[0;0m \033[1;33m[RUN]\033[0;0m ", i + 1, total);
		clr += FUNC0(test_case->name, match_test);
		clr += FUNC5(" ...");
	} else
		clr += FUNC5("[%d/%d] [RUN] %s ...", i + 1, total, test_case->name);
	FUNC2(stdout);
	int result = 0;
	test_case->func(test_case->name, &result);
	if (result == 0)
	{
		(*pass)++;
		for (; clr > 0; --clr)
			FUNC5("\b");
		if (FUNC4(FUNC3(stdout)))
		{
			FUNC5("\r\033[0;34m[%d/%d]\033[0;0m \033[1;32m[PASS]\033[0;0m ", i + 1, total);
			FUNC0(test_case->name, match_test);
			FUNC5("    \n");
		} else
			FUNC5("\r[%d/%d] [PASS] %s    \n", i + 1, total, test_case->name);
	} else if (result == -2) {
		(*skip)++;
		if (FUNC4(FUNC3(stdout)))
		{
			FUNC5("\n\033[0;34m[%d/%d]\033[0;0m \033[1;32m[SKIP]\033[0;0m ", i + 1, total);
			FUNC0(test_case->name, match_test);
			FUNC5("\n");
		} else
			FUNC5("\n[%d/%d] [SKIP] %s\n", i + 1, total, test_case->name);
	} else {
		(*fail)++;
		if (FUNC4(FUNC3(stdout)))
		{
			FUNC5("\n\033[0;34m[%d/%d]\033[0;0m \033[1;31m[FAIL]\033[0;0m ", i + 1, total);
			FUNC0(test_case->name, match_test);
			FUNC5("\n");
		} else
			FUNC5("\n[%d/%d] [FAIL] %s\n", i + 1, total, test_case->name);
	}
}