#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int MAX_SIZE ; 
 TYPE_1__* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int g_memcheck ; 

void FUNC9()
{
	char tmp[MAX_SIZE];
	TOKEN_LIST *t;
	char *cmd;
	FUNC6("Mayaqua Kernel Memory Debug Tools\n"
		"Copyright (c) SoftEther VPN Project. All Rights Reserved.\n\n");

#ifndef	OS_WIN32
	FUNC6("Unfortunately The call stack is not recorded on non-Windows systems\n");
	FUNC6("since UnixGetCallStack() and UnixGetCallStackSymbolInfo() is not implemented.\n");
	FUNC6("Therefore please use valgrind or other memory leak check tools\n");
	FUNC6("to get the actual call stacks of memory leak causes.\n\n");
#endif	// OS_WIN32

	g_memcheck = false;
	while (true)
	{
		FUNC6("debug>");
		FUNC4(tmp, sizeof(tmp));
		t = FUNC5(tmp, " \t");
		if (t->NumTokens == 0)
		{
			FUNC3(t);
			FUNC0();
			continue;
		}
		cmd = t->Token[0];
		if (!FUNC7(cmd, "?"))
		{
			FUNC1();
		}
		else if (!FUNC7(cmd, "a"))
		{
			FUNC0();
		}
		else if (!FUNC7(cmd, "i"))
		{
			if (t->NumTokens == 1)
			{
				FUNC6("Usage: i <obj_id>\n\n");
			}
			else
			{
				FUNC2(FUNC8(t->Token[1]));
			}
		}
		else if (!FUNC7(cmd, "q"))
		{
			break;
		}
		else if (FUNC8(cmd) != 0)
		{
			FUNC2(FUNC8(t->Token[0]));
		}
		else
		{
			FUNC6("Command Not Found,\n\n");
		}
		FUNC3(t);
	}
	FUNC3(t);
	g_memcheck = true;
}