#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  DhcpLeaseList; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ IpAddress; } ;
typedef  TYPE_2__ DHCP_LEASE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

DHCP_LEASE *FUNC2(VH *v, UINT ip)
{
	UINT i;
	// Validate arguments
	if (v == NULL)
	{
		return NULL;
	}

	for (i = 0; i < FUNC1(v->DhcpLeaseList); ++i)
	{
		DHCP_LEASE *d = FUNC0(v->DhcpLeaseList, i);
		if (d->IpAddress == ip)
		{
			return d;
		}
	}

	return NULL;
}