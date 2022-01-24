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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(CEDAR *cedar, X *x)
{
	// Validate arguments
	if (cedar == NULL || x == NULL)
	{
		return;
	}

	FUNC5(cedar->CaList);
	{
		UINT i;
		bool ok = true;

		for (i = 0;i < FUNC4(cedar->CaList);i++)
		{
			X *exist_x = FUNC3(cedar->CaList, i);
			if (FUNC1(exist_x, x))
			{
				ok = false;
				break;
			}
		}

		if (ok)
		{
			FUNC2(cedar->CaList, FUNC0(x));
		}
	}
	FUNC6(cedar->CaList);
}