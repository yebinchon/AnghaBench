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
typedef  int UINT ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int IPV6_ADDR_GLOBAL_UNICAST ; 
 int IPV6_ADDR_LOCAL_UNICAST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

bool FUNC10(IP *ip)
{
	UINT type;
	LIST *o;
	UINT i;
	bool ret = false;
	IP mask64;
	// Validate arguments
	if (ip == NULL)
	{
		return false;
	}
	if (FUNC4(ip) == false)
	{
		return false;
	}
	if (FUNC7(ip))
	{
		return false;
	}

	type = FUNC2(ip);

	if (type & IPV6_ADDR_LOCAL_UNICAST)
	{
		return true;
	}

	if ((type & IPV6_ADDR_GLOBAL_UNICAST) == 0)
	{
		return false;
	}

	FUNC3(&mask64, 64);

	o = FUNC1();

	ret = false;

	for (i = 0;i < FUNC9(o);i++)
	{
		IP *p = FUNC8(o, i);

		if (FUNC4(p))
		{
			if (FUNC7(p) == false)
			{
				if (FUNC6(p) == false)
				{
					if (FUNC5(p, ip, &mask64))
					{
						ret = true;
					}
				}
			}
		}
	}

	FUNC0(o);

	return ret;
}