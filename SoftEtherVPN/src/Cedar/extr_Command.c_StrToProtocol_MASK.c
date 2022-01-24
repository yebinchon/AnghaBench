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

/* Variables and functions */
 int INFINITE ; 
 int IP_PROTO_ICMPV4 ; 
 int IP_PROTO_ICMPV6 ; 
 int IP_PROTO_TCP ; 
 int IP_PROTO_UDP ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

UINT FUNC4(char *str)
{
	if (FUNC0(str))
	{
		return 0;
	}

	if (FUNC1("ip", str))
	{
		return 0;
	}
	else if (FUNC1("tcp", str))
	{
		return IP_PROTO_TCP;
	}
	else if (FUNC1("udp", str))
	{
		return IP_PROTO_UDP;
	}
	else if (FUNC1("icmpv4", str))
	{
		return IP_PROTO_ICMPV4;
	}
	else if (FUNC1("icmpv6", str))
	{
		return IP_PROTO_ICMPV6;
	}

	if (FUNC3(str) == 0)
	{
		if (FUNC2(str, "0") == 0)
		{
			return 0;
		}
		else
		{
			return INFINITE;
		}
	}

	if (FUNC3(str) >= 256)
	{
		return INFINITE;
	}

	return FUNC3(str);
}