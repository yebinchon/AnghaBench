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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int /*<<< orphan*/  IpAddress; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ DNSCACHE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int MAX_SIZE ; 

bool FUNC3(IP *ip, char *hostname, bool ipv6)
{
	DNSCACHE *c;
	char tmp[MAX_SIZE];
	// Validate arguments
	if (ip == NULL || hostname == NULL)
	{
		return false;
	}

	FUNC2(tmp, sizeof(tmp), hostname, ipv6);

	c = FUNC1(tmp);
	if (c == NULL)
	{
		return false;
	}

	FUNC0(ip, &c->IpAddress, sizeof(IP));

	return true;
}