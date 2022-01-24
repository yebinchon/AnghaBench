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
struct TYPE_3__ {int UseNat; int /*<<< orphan*/  DhcpDomainName; int /*<<< orphan*/  DhcpDnsServerAddress2; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(VH_OPTION *o, bool initial)
{
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	o->UseNat = false;

	if (initial)
	{
		FUNC1(&o->DhcpGatewayAddress, sizeof(IP));
		FUNC1(&o->DhcpDnsServerAddress, sizeof(IP));
		FUNC1(&o->DhcpDnsServerAddress2, sizeof(IP));
		FUNC0(o->DhcpDomainName, sizeof(o->DhcpDomainName), "");
	}
}