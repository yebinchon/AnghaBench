#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  NumConnections; } ;
typedef  TYPE_1__ IP_CLIENT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_clients ; 

UINT FUNC3(IP *ip)
{
	IP_CLIENT *c;
	UINT ret = 0;
	// Validate arguments
	if (ip == NULL)
	{
		return 0;
	}

	FUNC0(ip_clients);
	{
		c = FUNC1(ip);

		if (c != NULL)
		{
			ret = c->NumConnections;
		}
	}
	FUNC2(ip_clients);

	return ret;
}