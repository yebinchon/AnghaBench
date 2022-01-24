#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int NatTcpTimeout; int NatUdpTimeout; int DhcpExpireTimeSpan; int ApplyDhcpPushRoutes; int /*<<< orphan*/  DhcpPushRoutes; int /*<<< orphan*/  SaveLog; int /*<<< orphan*/  DhcpDomainName; int /*<<< orphan*/  DhcpDnsServerAddress2; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; int /*<<< orphan*/  DhcpSubnetMask; int /*<<< orphan*/  DhcpLeaseIPEnd; int /*<<< orphan*/  DhcpLeaseIPStart; int /*<<< orphan*/  UseDhcp; int /*<<< orphan*/  UseNat; int /*<<< orphan*/  Mtu; int /*<<< orphan*/  Mask; int /*<<< orphan*/  Ip; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ VH_OPTION ;
struct TYPE_9__ {int NatTcpTimeout; int NatUdpTimeout; int DhcpExpire; int /*<<< orphan*/  PushRoute; int /*<<< orphan*/  SaveLog; int /*<<< orphan*/  DhcpDomain; int /*<<< orphan*/  DhcpDns2; int /*<<< orphan*/  DhcpDns; int /*<<< orphan*/  DhcpGateway; int /*<<< orphan*/  DhcpMask; int /*<<< orphan*/  DhcpIpEnd; int /*<<< orphan*/  DhcpIpStart; int /*<<< orphan*/  UseDhcp; int /*<<< orphan*/  UseNat; int /*<<< orphan*/  Mtu; int /*<<< orphan*/  HostMask; int /*<<< orphan*/  HostIP; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_2__ VH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int INFINITE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void FUNC7(VH *v, VH_OPTION *o)
{
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	FUNC2(v);
	{
		FUNC6(o, sizeof(VH_OPTION));

		// MAC address
		FUNC1(o->MacAddress, v->MacAddress, 6);

		// Host information
		FUNC4(&o->Ip, v->HostIP);
		FUNC4(&o->Mask, v->HostMask);

		o->Mtu = v->Mtu;

		// NAT timeout information
		o->NatTcpTimeout = v->NatTcpTimeout / 1000;
		o->NatUdpTimeout = v->NatUdpTimeout / 1000;

		// NAT using flag
		o->UseNat = v->UseNat;

		// DHCP using flag
		o->UseDhcp = v->UseDhcp;

		// IP address range for DHCP distribution
		FUNC4(&o->DhcpLeaseIPStart, v->DhcpIpStart);
		FUNC4(&o->DhcpLeaseIPEnd, v->DhcpIpEnd);

		// Subnet mask
		FUNC4(&o->DhcpSubnetMask, v->DhcpMask);

		// Expiration date
		if (v->DhcpExpire != INFINITE)
		{
			o->DhcpExpireTimeSpan = v->DhcpExpire / 1000;
		}
		else
		{
			o->DhcpExpireTimeSpan = INFINITE;
		}

		// Gateway address
		FUNC4(&o->DhcpGatewayAddress, v->DhcpGateway);

		// DNS server address
		FUNC4(&o->DhcpDnsServerAddress, v->DhcpDns);
		FUNC4(&o->DhcpDnsServerAddress2, v->DhcpDns2);

		// Domain name
		FUNC3(o->DhcpDomainName, sizeof(o->DhcpDomainName), v->DhcpDomain);

		// Save a log
		o->SaveLog = v->SaveLog;

		// Pushing route option
		FUNC0(o->DhcpPushRoutes, sizeof(o->DhcpPushRoutes), &v->PushRoute);
		o->ApplyDhcpPushRoutes = true;
	}
	FUNC5(v);
}