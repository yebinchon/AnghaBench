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
struct TYPE_3__ {int /*<<< orphan*/ * DhcpPendingLeaseList; int /*<<< orphan*/ * DhcpLeaseList; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  DHCP_LEASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(VH *v)
{
	UINT i;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	// Empty the leases lists
	for (i = 0; i < FUNC2(v->DhcpLeaseList); ++i)
	{
		DHCP_LEASE *d = FUNC1(v->DhcpLeaseList, i);
		FUNC0(d);
	}

	FUNC3(v->DhcpLeaseList);
	v->DhcpLeaseList = NULL;

	for (i = 0; i < FUNC2(v->DhcpPendingLeaseList); ++i)
	{
		DHCP_LEASE *d = FUNC1(v->DhcpPendingLeaseList, i);
		FUNC0(d);
	}

	FUNC3(v->DhcpPendingLeaseList);
	v->DhcpPendingLeaseList = NULL;
}