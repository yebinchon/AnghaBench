#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int* addr; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ IPV6_ADDR_GLOBAL_UNICAST ; 
 scalar_t__ IPV6_ADDR_LOOPBACK ; 
 scalar_t__ IPV6_ADDR_ZERO ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 

void FUNC12(IP *ip, bool ipv6)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (ip == NULL)
	{
		return;
	}

	FUNC11(ip, sizeof(IP));

	o = FUNC2();

	if (ipv6 == false)
	{
		// IPv4
		for (i = 0;i < FUNC9(o);i++)
		{
			IP *p = FUNC8(o, i);

			if (FUNC4(p))
			{
				if (FUNC7(p) == false && FUNC6(p) == false && p->addr[0] != 127)
				{
					FUNC0(ip, p, sizeof(IP));
				}
			}
		}

		if (FUNC7(ip))
		{
			for (i = 0;i < FUNC9(o);i++)
			{
				IP *p = FUNC8(o, i);

				if (FUNC4(p))
				{
					if (FUNC7(p) == false && FUNC6(p) && p->addr[0] != 127)
					{
						FUNC0(ip, p, sizeof(IP));
					}
				}
			}
		}

		if (FUNC7(ip))
		{
			FUNC10(ip, 127, 0, 0, 1);
		}
	}
	else
	{
		// IPv6
		for (i = 0;i < FUNC9(o);i++)
		{
			IP *p = FUNC8(o, i);

			if (FUNC5(p))
			{
				UINT type = FUNC3(p);

				if ((type & IPV6_ADDR_GLOBAL_UNICAST) && ((type & IPV6_ADDR_ZERO) == 0) && ((type & IPV6_ADDR_LOOPBACK) == 0))
				{
					FUNC0(ip, p, sizeof(IP));
				}
			}
		}
	}

	FUNC1(o);
}