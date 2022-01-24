#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  DhcpPushRoutes; void* ApplyDhcpPushRoutes; int /*<<< orphan*/  HubName; void* SaveLog; int /*<<< orphan*/  DhcpDomainName; int /*<<< orphan*/  DhcpDnsServerAddress2; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; void* DhcpExpireTimeSpan; int /*<<< orphan*/  DhcpSubnetMask; int /*<<< orphan*/  DhcpLeaseIPEnd; int /*<<< orphan*/  DhcpLeaseIPStart; void* UseDhcp; void* NatUdpTimeout; void* NatTcpTimeout; void* Mtu; void* UseNat; int /*<<< orphan*/  Mask; int /*<<< orphan*/  Ip; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

void FUNC6(VH_OPTION *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC5(t, sizeof(VH_OPTION));
	FUNC1(p, "MacAddress", t->MacAddress, 6);
	FUNC3(p, "Ip", &t->Ip);
	FUNC3(p, "Mask", &t->Mask);
	t->UseNat = FUNC0(p, "UseNat");
	t->Mtu = FUNC2(p, "Mtu");
	t->NatTcpTimeout = FUNC2(p, "NatTcpTimeout");
	t->NatUdpTimeout = FUNC2(p, "NatUdpTimeout");
	t->UseDhcp = FUNC0(p, "UseDhcp");
	FUNC3(p, "DhcpLeaseIPStart", &t->DhcpLeaseIPStart);
	FUNC3(p, "DhcpLeaseIPEnd", &t->DhcpLeaseIPEnd);
	FUNC3(p, "DhcpSubnetMask", &t->DhcpSubnetMask);
	t->DhcpExpireTimeSpan = FUNC2(p, "DhcpExpireTimeSpan");
	FUNC3(p, "DhcpGatewayAddress", &t->DhcpGatewayAddress);
	FUNC3(p, "DhcpDnsServerAddress", &t->DhcpDnsServerAddress);
	FUNC3(p, "DhcpDnsServerAddress2", &t->DhcpDnsServerAddress2);
	FUNC4(p, "DhcpDomainName", t->DhcpDomainName, sizeof(t->DhcpDomainName));
	t->SaveLog = FUNC0(p, "SaveLog");
	FUNC4(p, "RpcHubName", t->HubName, sizeof(t->HubName));
	t->ApplyDhcpPushRoutes = FUNC0(p, "ApplyDhcpPushRoutes");
	FUNC4(p, "DhcpPushRoutes", t->DhcpPushRoutes, sizeof(t->DhcpPushRoutes));
}