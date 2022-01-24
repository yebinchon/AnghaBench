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
struct TYPE_5__ {int /*<<< orphan*/  LocalIP; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT ; 
 char* UDP_NAT_T_GET_PRIVATE_IP_TCP_SERVER ; 
 int /*<<< orphan*/  UDP_NAT_T_PORT_FOR_TCP_1 ; 
 int /*<<< orphan*/  UDP_NAT_T_PORT_FOR_TCP_2 ; 

bool FUNC6(IP *ip, bool from_vg)
{
	SOCK *s;
	IP t;
	char *hostname = UDP_NAT_T_GET_PRIVATE_IP_TCP_SERVER;
	// Validate arguments
	if (ip == NULL)
	{
		return false;
	}

	s = FUNC0(hostname, UDP_NAT_T_PORT_FOR_TCP_1, UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT);

	if (s == NULL)
	{
		s = FUNC0(hostname, UDP_NAT_T_PORT_FOR_TCP_2, UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT);

		if (s == NULL)
		{
			s = FUNC0(FUNC3(), UDP_NAT_T_PORT_FOR_TCP_1, UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT);

			if (s == NULL)
			{
				return false;
			}
		}
	}

	FUNC1(&t, &s->LocalIP, sizeof(IP));

	FUNC2(s);
	FUNC5(s);

	if (FUNC4(&t))
	{
		return false;
	}

	FUNC1(ip, &t, sizeof(IP));

	return true;
}