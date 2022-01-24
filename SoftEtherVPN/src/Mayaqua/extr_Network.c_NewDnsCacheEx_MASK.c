#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_6__ {char* HostName; int /*<<< orphan*/  IpAddress; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ DNSCACHE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  DnsCache ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int MAX_PATH ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* FUNC8 (int) ; 

void FUNC9(char *hostname, IP *ip, bool ipv6)
{
	DNSCACHE *c;
	char tmp[MAX_PATH];
	// Validate arguments
	if (hostname == NULL || ip == NULL)
	{
		return;
	}

	if (FUNC4() == false)
	{
		return;
	}

	FUNC3(tmp, sizeof(tmp), hostname, ipv6);

	FUNC5();
	{
		DNSCACHE t;

		// Search for anything matches to the hostname first
		t.HostName = tmp;
		c = FUNC6(DnsCache, &t);

		if (c == NULL)
		{
			// Newly register
			c = FUNC8(sizeof(DNSCACHE));
			c->HostName = FUNC2(tmp);

			FUNC1(&c->IpAddress, ip, sizeof(IP));

			FUNC0(DnsCache, c);
		}
		else
		{
			// Update
			FUNC1(&c->IpAddress, ip, sizeof(IP));
		}
	}
	FUNC7();
}