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
struct TYPE_4__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

bool FUNC5(CONSOLE *c, wchar_t *str, void *param)
{
	// Validate arguments
	if (c == NULL || str == NULL)
	{
		return false;
	}

	if (FUNC0(str))
	{
		return true;
	}

	if (FUNC2(str) == 0 && FUNC1(str, L"0.0.0.0") != 0)
	{
		wchar_t *msg = (param == NULL) ? FUNC3("CMD_IP_EVAL_FAILED") : (wchar_t *)param;
		c->Write(c, msg);
		return false;
	}

	return true;
}