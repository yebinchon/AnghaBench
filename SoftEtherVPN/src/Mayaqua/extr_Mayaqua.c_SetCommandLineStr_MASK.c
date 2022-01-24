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
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * cmdline ; 
 int /*<<< orphan*/ * uni_cmdline ; 

void FUNC4(char *str)
{
	// Validate arguments
	if (str == NULL)
	{
		if (cmdline != NULL)
		{
			FUNC2(cmdline);
		}
		cmdline = NULL;
	}
	else
	{
		if (cmdline != NULL)
		{
			FUNC2(cmdline);
		}
		cmdline = FUNC0(str);
	}

	if (cmdline == NULL)
	{
		if (uni_cmdline != NULL)
		{
			FUNC2(uni_cmdline);
			uni_cmdline = NULL;
		}
	}
	else
	{
		if (uni_cmdline != NULL)
		{
			FUNC2(uni_cmdline);
		}
		uni_cmdline = FUNC1(cmdline);
	}

	FUNC3();
}