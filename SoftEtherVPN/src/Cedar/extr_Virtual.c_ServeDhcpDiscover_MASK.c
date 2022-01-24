#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ DhcpIpStart; scalar_t__ DhcpIpEnd; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_19__ {scalar_t__ IpAddress; int /*<<< orphan*/  MacAddress; } ;
struct TYPE_18__ {scalar_t__ SecureNAT_RandomizeAssignIp; } ;
typedef  TYPE_2__ HUB_OPTION ;
typedef  TYPE_3__ DHCP_LEASE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 TYPE_3__* FUNC5 (TYPE_1__*,scalar_t__) ; 
 TYPE_3__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (TYPE_1__*,scalar_t__) ; 
 TYPE_3__* FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

UINT FUNC9(VH *v, UCHAR *mac, UINT request_ip)
{
	UINT ret = 0;
	// Validate arguments
	if (v == NULL || mac == NULL)
	{
		return 0;
	}

	if (request_ip != 0)
	{
		// IP address is specified
		DHCP_LEASE *d = FUNC5(v, request_ip);
		if (d == NULL)
		{
			d = FUNC7(v, request_ip);
		}

		if (d != NULL)
		{
			// If an entry for the same IP address already exists,
			// check whether it is a request from the same MAC address
			if (FUNC0(mac, d->MacAddress, 6) == 0)
			{
				// Examine whether the specified IP address is within the range of assignment
				if (FUNC1(v->DhcpIpStart) <= FUNC1(request_ip) &&
					FUNC1(request_ip) <= FUNC1(v->DhcpIpEnd))
				{
					// Accept if within the range
					ret = request_ip;
				}
			}
		}
		else
		{
			// Examine whether the specified IP address is within the range of assignment
			if (FUNC1(v->DhcpIpStart) <= FUNC1(request_ip) &&
				FUNC1(request_ip) <= FUNC1(v->DhcpIpEnd))
			{
				// Accept if within the range
				ret = request_ip;
			}
			else
			{
				// Propose an IP in the range since it's a Discover although It is out of range
			}
		}
	}

	if (ret == 0)
	{
		// If there is any entry with the same MAC address
		// that are already registered, use it with priority
		DHCP_LEASE *d = FUNC6(v, mac);
		if (d == NULL)
		{
			d = FUNC8(v, mac);
		}

		if (d != NULL)
		{
			// Examine whether the found IP address is in the allocation region
			if (FUNC1(v->DhcpIpStart) <= FUNC1(d->IpAddress) &&
				FUNC1(d->IpAddress) <= FUNC1(v->DhcpIpEnd))
			{
				// Use the IP address if it's found within the range
				ret = d->IpAddress;
			}
		}
	}

	if (ret == 0)
	{
		// Take an appropriate IP addresses that can be assigned newly
		HUB_OPTION *opt = FUNC4(v);

		if (opt != NULL && opt->SecureNAT_RandomizeAssignIp)
		{
			ret = FUNC3(v, mac);
		}
		else
		{
			ret = FUNC2(v);
		}
	}

	return ret;
}