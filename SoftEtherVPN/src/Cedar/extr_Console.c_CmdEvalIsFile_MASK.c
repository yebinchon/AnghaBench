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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_5__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

bool FUNC7(CONSOLE *c, wchar_t *str, void *param)
{
	wchar_t tmp[MAX_PATH];
	// Validate arguments
	if (c == NULL || str == NULL)
	{
		return false;
	}

	FUNC3(tmp, sizeof(tmp), str);

	if (FUNC0(tmp))
	{
		c->Write(c, FUNC4("CMD_FILE_NAME_EMPTY"));
		return false;
	}

	if (FUNC1(tmp) == false)
	{
		wchar_t tmp2[MAX_SIZE];

		FUNC2(tmp2, sizeof(tmp2), FUNC4("CMD_FILE_NOT_FOUND"), tmp);
		c->Write(c, tmp2);

		return false;
	}

	return true;
}