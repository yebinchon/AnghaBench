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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char *FUNC4(wchar_t *str, char *name)
{
	wchar_t *tmp1, *tmp2;
	char *ret;
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	if (name != NULL)
	{
		tmp1 = FUNC0(name);
	}
	else
	{
		tmp1 = NULL;
	}

	tmp2 = FUNC3(str, tmp1);

	if (tmp2 == NULL)
	{
		ret = NULL;
	}
	else
	{
		ret = FUNC1(tmp2);
		FUNC2(tmp2);
	}

	FUNC2(tmp1);

	return ret;
}