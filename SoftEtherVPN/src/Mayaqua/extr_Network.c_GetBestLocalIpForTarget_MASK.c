#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  GatewayIP; scalar_t__ LocalRouting; } ;
typedef  TYPE_1__ ROUTE_ENTRY ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

bool FUNC9(IP *local_ip, IP *target_ip)
{
	bool ret = false;
	ROUTE_ENTRY *e;
	IP ip2;
	UINT n = 0;
	IP zero_ip;
	// Validate arguments
	FUNC7(local_ip, sizeof(IP));
	FUNC8(&zero_ip);
	if (target_ip == NULL)
	{
		target_ip = &zero_ip;
	}
	if (local_ip == NULL || FUNC4(target_ip) == false)
	{
		return false;
	}

	FUNC0(&ip2, target_ip, sizeof(IP));

	while (true)
	{
		n++;
		if (n >= 64)
		{
			break;
		}

		e = FUNC2(&ip2);
		if (e != NULL)
		{
			if (FUNC6(&e->GatewayIP))
			{
				FUNC1(e);
				break;
			}

			if (e->LocalRouting)
			{
				ret = true;
				FUNC0(local_ip, &e->GatewayIP, sizeof(IP));
				FUNC1(e);
				break;
			}
			else
			{
				FUNC0(&ip2, &e->GatewayIP, sizeof(IP));
			}

			FUNC1(e);
		}
	}

	if (ret == false)
	{
		if (FUNC5(target_ip))
		{
			FUNC3(local_ip);
			ret = true;
		}
	}

	return ret;
}