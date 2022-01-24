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
struct TYPE_3__ {int UseNat; int UseDhcp; int SaveLog; int /*<<< orphan*/  DhcpPushRoutes; int /*<<< orphan*/  HubName; int /*<<< orphan*/  DhcpDomainName; int /*<<< orphan*/  DhcpDnsServerAddress2; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; int /*<<< orphan*/  DhcpExpireTimeSpan; int /*<<< orphan*/  DhcpSubnetMask; int /*<<< orphan*/  DhcpLeaseIPEnd; int /*<<< orphan*/  DhcpLeaseIPStart; int /*<<< orphan*/  NatUdpTimeout; int /*<<< orphan*/  NatTcpTimeout; int /*<<< orphan*/  Mtu; int /*<<< orphan*/  Mask; int /*<<< orphan*/  Ip; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC5(PACK *p, VH_OPTION *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC1(p, "MacAddress", t->MacAddress, 6);
	FUNC3(p, "Ip", &t->Ip);
	FUNC3(p, "Mask", &t->Mask);
	FUNC0(p, "UseNat", t->UseNat);
	FUNC2(p, "Mtu", t->Mtu);
	FUNC2(p, "NatTcpTimeout", t->NatTcpTimeout);
	FUNC2(p, "NatUdpTimeout", t->NatUdpTimeout);
	FUNC0(p, "UseDhcp", t->UseDhcp);
	FUNC3(p, "DhcpLeaseIPStart", &t->DhcpLeaseIPStart);
	FUNC3(p, "DhcpLeaseIPEnd", &t->DhcpLeaseIPEnd);
	FUNC3(p, "DhcpSubnetMask", &t->DhcpSubnetMask);
	FUNC2(p, "DhcpExpireTimeSpan", t->DhcpExpireTimeSpan);
	FUNC3(p, "DhcpGatewayAddress", &t->DhcpGatewayAddress);
	FUNC3(p, "DhcpDnsServerAddress", &t->DhcpDnsServerAddress);
	FUNC3(p, "DhcpDnsServerAddress2", &t->DhcpDnsServerAddress2);
	FUNC4(p, "DhcpDomainName", t->DhcpDomainName);
	FUNC0(p, "SaveLog", t->SaveLog);
	FUNC4(p, "RpcHubName", t->HubName);
	FUNC0(p, "ApplyDhcpPushRoutes", true);
	FUNC4(p, "DhcpPushRoutes", t->DhcpPushRoutes);
}