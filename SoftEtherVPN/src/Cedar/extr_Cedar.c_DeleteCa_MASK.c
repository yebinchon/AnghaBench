#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/  CaList; } ;
typedef  TYPE_1__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

bool FUNC7(CEDAR *cedar, UINT ptr)
{
	bool b = false;
	// Validate arguments
	if (cedar == NULL || ptr == 0)
	{
		return false;
	}

	FUNC4(cedar->CaList);
	{
		UINT i;

		for (i = 0;i < FUNC3(cedar->CaList);i++)
		{
			X *x = FUNC2(cedar->CaList, i);

			if (FUNC5(x) == ptr)
			{
				FUNC0(cedar->CaList, x);
				FUNC1(x);

				b = true;

				break;
			}
		}
	}
	FUNC6(cedar->CaList);

	return b;
}