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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {char* str; } ;
typedef  TYPE_1__ TABLE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

char *FUNC6(char *name)
{
	TABLE *t;
	// Validate arguments
	if (name == NULL)
	{
		return "";
	}

#ifdef	OS_WIN32
	if (StrCmpi(name, "DEFAULT_FONT") == 0)
	{
		if (_II("LANG") == 2)
		{
			UINT os_type = GetOsType();
			if (OS_IS_WINDOWS_9X(os_type) ||
				GET_KETA(os_type, 100) <= 4)
			{
				// Use the SimSun font in Windows 9x, Windows NT 4.0, Windows 2000, Windows XP, and Windows Server 2003
				return "SimSun";
			}
		}
	}
#endif	// OS_WIN32

	// Search
	t = FUNC0(name);
	if (t == NULL)
	{
		//Debug("%s: ANSI STRING NOT FOUND\n", name);
		return "";
	}

	return t->str;
}