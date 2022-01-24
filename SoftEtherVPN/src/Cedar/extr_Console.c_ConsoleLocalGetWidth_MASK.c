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
typedef  int /*<<< orphan*/  t ;
struct winsize {int /*<<< orphan*/  ws_col; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC1 (struct winsize*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct winsize*) ; 

UINT FUNC3(CONSOLE *c)
{
	UINT ret = 0;
	// Validate arguments
	if (c == NULL)
	{
		return 0;
	}

#ifdef	OS_WIN32
	ret = MsGetConsoleWidth();
#else	// OS_WIN32
	{
		struct winsize t;

		FUNC1(&t, sizeof(t));

		if (FUNC2(1, TIOCGWINSZ, &t) == 0)
		{
			ret = t.ws_col;
		}
	}
#endif	// OS_WIN32

	return ret;
}