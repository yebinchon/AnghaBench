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
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

void FUNC3(char *command_name, wchar_t **description, wchar_t **args, wchar_t **help)
{
	char tmp1[128], tmp2[128], tmp3[128];

	FUNC0(tmp1, sizeof(tmp1), "CMD_%s", command_name);
	FUNC0(tmp2, sizeof(tmp2), "CMD_%s_ARGS", command_name);
	FUNC0(tmp3, sizeof(tmp3), "CMD_%s_HELP", command_name);

	if (description != NULL)
	{
		*description = FUNC2(tmp1);
		if (FUNC1(*description))
		{
			*description = FUNC2("CMD_UNKNOWM");
		}
	}

	if (args != NULL)
	{
		*args = FUNC2(tmp2);
		if (FUNC1(*args))
		{
			*args = FUNC2("CMD_UNKNOWN_ARGS");
		}
	}

	if (help != NULL)
	{
		*help = FUNC2(tmp3);
		if (FUNC1(*help))
		{
			*help = FUNC2("CMD_UNKNOWN_HELP");
		}
	}
}