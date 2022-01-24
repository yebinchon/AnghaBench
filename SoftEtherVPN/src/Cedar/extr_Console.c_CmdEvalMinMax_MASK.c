#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {char* StrName; scalar_t__ MinValue; scalar_t__ MaxValue; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ CONSOLE ;
typedef  TYPE_2__ CMD_EVAL_MIN_MAX ;

/* Variables and functions */
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

bool FUNC4(CONSOLE *c, wchar_t *str, void *param)
{
	CMD_EVAL_MIN_MAX *e;
	wchar_t *tag;
	UINT v;
	// Validate arguments
	if (param == NULL)
	{
		return false;
	}

	e = (CMD_EVAL_MIN_MAX *)param;

	if (e->StrName == NULL)
	{
		tag = FUNC2("CMD_EVAL_MIN_MAX");
	}
	else
	{
		tag = FUNC2(e->StrName);
	}

	v = FUNC1(str);

	if (v >= e->MinValue && v <= e->MaxValue)
	{
		return true;
	}
	else
	{
		wchar_t tmp[MAX_SIZE];

		FUNC0(tmp, sizeof(tmp), tag, e->MinValue, e->MaxValue);
		c->Write(c, tmp);

		return false;
	}
}