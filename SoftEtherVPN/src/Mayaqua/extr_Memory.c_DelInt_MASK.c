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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(LIST *o, UINT i)
{
	LIST *o2 = NULL;
	UINT j;
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	for (j = 0;j < FUNC4(o);j++)
	{
		UINT *p = FUNC3(o, j);

		if (*p == i)
		{
			if (o2 == NULL)
			{
				o2 = FUNC5(NULL);
			}
			FUNC0(o2, p);
		}
	}

	for (j = 0;j < FUNC4(o2);j++)
	{
		UINT *p = FUNC3(o2, j);

		FUNC1(o, p);

		FUNC2(p);
	}

	if (o2 != NULL)
	{
		FUNC6(o2);
	}
}