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
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {char* HostName; int /*<<< orphan*/  IpAddress; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ HOSTCACHE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  HostCacheList ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

bool FUNC7(char *hostname, UINT size, IP *ip)
{
	bool ret;
	// Validate arguments
	if (hostname == NULL || ip == NULL)
	{
		return false;
	}

	ret = false;

	FUNC2(HostCacheList);
	{
		HOSTCACHE t, *c;
		FUNC6(&t, sizeof(t));
		FUNC0(&t.IpAddress, ip, sizeof(IP));

		c = FUNC3(HostCacheList, &t);
		if (c != NULL)
		{
			if (FUNC1(c->HostName) == false)
			{
				ret = true;
				FUNC4(hostname, size, c->HostName);
			}
			else
			{
				ret = true;
				FUNC4(hostname, size, "");
			}
		}
	}
	FUNC5(HostCacheList);

	return ret;
}