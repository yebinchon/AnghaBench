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
struct TYPE_5__ {scalar_t__ DhcpIpStart; scalar_t__ DhcpIpEnd; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,scalar_t__) ; 

UINT FUNC3(VH *v)
{
	UINT ip_start, ip_end;
	UINT i;
	// Validate arguments
	if (v == NULL)
	{
		return 0;
	}

	ip_start = FUNC0(v->DhcpIpStart);
	ip_end = FUNC0(v->DhcpIpEnd);

	for (i = ip_start; i <= ip_end;i++)
	{
		UINT ip = FUNC0(i);
		if (FUNC1(v, ip) == NULL && FUNC2(v, ip) == NULL)
		{
			// A free IP address is found
			return ip;
		}
	}

	// There is no free address
	return 0;
}