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
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(IP *ip)
{
	LIST *o;
	UINT i;
	bool ret = false;
	// Validate arguments
	if (ip == NULL)
	{
		return false;
	}

	o = FUNC2();

	for (i = 0;i < FUNC4(o);i++)
	{
		IP *a = FUNC3(o, i);

		if (FUNC0(ip, a) == 0)
		{
			ret = true;
			break;
		}
	}

	FUNC1(o);

	return ret;
}