#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ Win32_OldConsoleWidth; int /*<<< orphan*/  OutputLock; int /*<<< orphan*/ * OutFile; int /*<<< orphan*/  InBuf; int /*<<< orphan*/ * InFile; scalar_t__ Param; } ;
typedef  TYPE_1__ LOCAL_CONSOLE_PARAM ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(CONSOLE *c)
{
	LOCAL_CONSOLE_PARAM *p;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	p = (LOCAL_CONSOLE_PARAM *)c->Param;

#ifdef	OS_WIN32
	if (p->Win32_OldConsoleWidth != 0)
	{
		MsSetConsoleWidth(p->Win32_OldConsoleWidth);
	}
#endif	// OS_WIN32

	if (p != NULL)
	{
		if (p->InFile != NULL)
		{
			FUNC1(p->InFile);
			FUNC3(p->InBuf);
		}

		if (p->OutFile != NULL)
		{
			FUNC1(p->OutFile);
		}

		FUNC2(p);
	}

	FUNC0(c->OutputLock);

	// Memory release
	FUNC2(c);
}