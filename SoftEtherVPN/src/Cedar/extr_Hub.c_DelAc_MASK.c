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
typedef  scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ Id; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ AC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(LIST *o, UINT id)
{
	UINT i;
	// Validate arguments
	if (o == NULL || id == 0)
	{
		return false;
	}

	for (i = 0;i < FUNC3(o);i++)
	{
		AC *ac = FUNC2(o, i);

		if (ac->Id == id)
		{
			if (FUNC0(o, ac))
			{
				FUNC1(ac);

				FUNC4(o);

				return true;
			}
		}
	}

	return false;
}