#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  DhcpLeaseList; } ;
typedef  TYPE_1__ VH ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_2__ DHCP_LEASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 

DHCP_LEASE *FUNC2(VH *v, UCHAR *mac)
{
	DHCP_LEASE *d, t;
	// Validate arguments
	if (v == NULL || mac == NULL)
	{
		return NULL;
	}

	FUNC0(&t.MacAddress, mac, 6);
	d = FUNC1(v->DhcpLeaseList, &t);

	return d;
}