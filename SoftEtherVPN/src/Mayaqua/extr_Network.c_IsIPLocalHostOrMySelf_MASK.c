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
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

bool FUNC7(IP *ip)
{
	LIST *o;
	bool ret = false;
	UINT i;
	// Validate arguments
	if (ip == NULL)
	{
		return false;
	}

	o = FUNC2();
	if (o == NULL)
	{
		return false;
	}

	for (i = 0;i < FUNC6(o);i++)
	{
		IP *p = FUNC5(o, i);

		if (FUNC0(p, ip) == 0)
		{
			ret = true;

			break;
		}
	}

	FUNC1(o);

	if (FUNC3(ip) || FUNC4(ip))
	{
		ret = true;
	}

	return ret;
}