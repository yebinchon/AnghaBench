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
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(LIST *o, X *x)
{
	UINT i;
	// Validate arguments
	if (o == NULL || x == NULL)
	{
		return false;
	}

	for (i = 0;i < FUNC2(o);i++)
	{
		X *xx = FUNC1(o, i);

		if (FUNC0(x, xx))
		{
			return true;
		}
	}

	return false;
}