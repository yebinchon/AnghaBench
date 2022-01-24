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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC3(LIST *o, wchar_t *str)
{
	UINT i;
	// Validate arguments
	if (o == NULL || str == NULL)
	{
		return false;
	}

	for (i = 0; i < FUNC1(o); i++)
	{
		wchar_t *s = FUNC0(o, i);

		if (FUNC2(s, str) == 0)
		{
			return true;
		}
	}

	return false;
}