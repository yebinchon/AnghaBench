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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,char*) ; 

bool FUNC3(CONSOLE *c, wchar_t *str)
{
	// Validate arguments
	if (c == NULL || str == NULL)
	{
		return false;
	}

	FUNC2(L"%s%s", str, (FUNC1(str, L"\n") ? L"" : L"\n"));

	FUNC0(c, str, true);

	return true;
}