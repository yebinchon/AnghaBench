#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_2__ {scalar_t__ ConsoleType; int /*<<< orphan*/  OutputLock; } ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 scalar_t__ CONSOLE_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void *param, wchar_t *str)
{
	CONSOLE *c;
	// Validate arguments
	if (param == NULL || str == NULL)
	{
		return;
	}

	c = (CONSOLE *)param;

	if (c->ConsoleType == CONSOLE_LOCAL)
	{
		FUNC0(c->OutputLock);
		{
			wchar_t tmp[MAX_SIZE];

			// Display only if the local console
			// (Can not be displayed because threads aren't synchronized otherwise?)
			FUNC4(tmp, sizeof(tmp), str);
			if (FUNC1(str, L"\n") == false)
			{
				FUNC3(tmp, sizeof(tmp), L"\n");
			}
			FUNC2(L"%s", tmp);
		}
		FUNC5(c->OutputLock);
	}
}