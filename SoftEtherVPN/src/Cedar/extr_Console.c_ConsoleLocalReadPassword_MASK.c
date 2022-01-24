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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 

char *FUNC5(CONSOLE *c, wchar_t *prompt)
{
	char tmp[64];
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}
	if (prompt == NULL)
	{
		prompt = L"Password>";
	}

	FUNC3(L"%s", prompt);
	FUNC0(c, prompt, false);

	if (FUNC2(tmp, sizeof(tmp)))
	{
		FUNC0(c, L"********", true);
		return FUNC1(tmp);
	}
	else
	{
		FUNC0(c, FUNC4("CON_USER_CANCEL"), true);
		return NULL;
	}
}