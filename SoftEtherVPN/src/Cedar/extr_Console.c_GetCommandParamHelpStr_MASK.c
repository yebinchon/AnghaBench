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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

void FUNC3(char *command_name, char *param_name, wchar_t **description)
{
	char tmp[160];
	if (description == NULL)
	{
		return;
	}

	FUNC0(tmp, sizeof(tmp), "CMD_%s_%s", command_name, param_name);

	*description = FUNC2(tmp);

	if (FUNC1(*description))
	{
		*description = FUNC2("CMD_UNKNOWN_PARAM");
	}
}