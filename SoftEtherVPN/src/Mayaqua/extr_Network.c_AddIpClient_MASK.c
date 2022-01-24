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
struct TYPE_5__ {scalar_t__ NumConnections; int /*<<< orphan*/  IpAddress; } ;
typedef  TYPE_1__ IP_CLIENT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  ip_clients ; 

void FUNC6(IP *ip)
{
	IP_CLIENT *c;
	// Validate arguments
	if (ip == NULL)
	{
		return;
	}

	FUNC2(ip_clients);
	{
		c = FUNC3(ip);

		if (c == NULL)
		{
			c = FUNC5(sizeof(IP_CLIENT));
			FUNC1(&c->IpAddress, ip, sizeof(IP));
			c->NumConnections = 0;

			FUNC0(ip_clients, c);
		}

		c->NumConnections++;
	}
	FUNC4(ip_clients);

	//Debug("AddIpClient: %r\n", ip);
}