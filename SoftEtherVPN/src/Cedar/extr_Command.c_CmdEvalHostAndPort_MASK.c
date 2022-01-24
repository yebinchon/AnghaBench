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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

bool FUNC5(CONSOLE *c, wchar_t *str, void *param)
{
	char *tmp;
	bool ret = false;
	// Validate arguments
	if (c == NULL || str == NULL)
	{
		return false;
	}

	tmp = FUNC0(str);

	ret = FUNC2(tmp, NULL, NULL, (UINT)param);

	if (ret == false)
	{
		c->Write(c, param == NULL ? FUNC3("CMD_HOSTPORT_EVAL_FAILED") : (wchar_t *)param);
	}

	FUNC1(tmp);

	return ret;
}