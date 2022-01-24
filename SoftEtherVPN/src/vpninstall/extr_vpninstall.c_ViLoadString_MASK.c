#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int UINT ;
struct TYPE_2__ {int /*<<< orphan*/  OsType; } ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,char*,int) ; 
 char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int) ; 

wchar_t *FUNC8(HINSTANCE hInst, UINT id)
{
	wchar_t *ret = NULL;

	if (FUNC6(FUNC3()->OsType))
	{
		char *a = FUNC7(hInst, id);
		if (a != NULL)
		{
			ret = FUNC0(a);
			FUNC2(a);
		}
	}
	else
	{
		UINT tmp_size = 60000;
		wchar_t *tmp = FUNC5(tmp_size);

		if (FUNC4(hInst, id, tmp, tmp_size) != 0)
		{
			ret = FUNC1(tmp);
		}

		FUNC2(tmp);
	}

	return ret;
}