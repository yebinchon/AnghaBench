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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 

bool FUNC10(wchar_t *name)
{
	LIST *o;
	wchar_t tmp[MAX_PATH];
	wchar_t tmp2[MAX_PATH];
	UINT i;
	bool ret = false;
	// Validate arguments
	if (name == NULL)
	{
		return false;
	}

	o = FUNC6(NULL);

	FUNC9(tmp, sizeof(tmp), name);
	while (true)
	{
		wchar_t *s = FUNC1(tmp);

		FUNC0(o, s);

		FUNC2(tmp2, sizeof(tmp2), tmp);

		if (FUNC8(tmp2, tmp) == 0)
		{
			break;
		}

		FUNC9(tmp, sizeof(tmp), tmp2);
	}

	for (i = 0;i < FUNC4(o);i++)
	{
		UINT j = FUNC4(o) - i - 1;
		wchar_t *s = FUNC3(o, j);

		if (FUNC8(s, L"\\") != 0 && FUNC8(s, L"/") != 0)
		{
			ret = FUNC5(s);
		}
	}

	FUNC7(o);

	return ret;
}