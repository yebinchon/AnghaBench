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
struct TYPE_4__ {int UseNat; int Mtu; int NatTcpTimeout; int NatUdpTimeout; int UseDhcp; int DhcpExpireTimeSpan; int SaveLog; int /*<<< orphan*/  DhcpDomainName; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; int /*<<< orphan*/  DhcpSubnetMask; int /*<<< orphan*/  DhcpLeaseIPEnd; int /*<<< orphan*/  DhcpLeaseIPStart; int /*<<< orphan*/  Mask; int /*<<< orphan*/  Ip; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  int /*<<< orphan*/  NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(NAT *n, VH_OPTION *o)
{
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	FUNC3(o, sizeof(VH_OPTION));
	FUNC0(o->MacAddress);

	// Set the virtual IP to 192.168.30.1/24
	FUNC2(&o->Ip, 192, 168, 30, 1);
	FUNC2(&o->Mask, 255, 255, 255, 0);
	o->UseNat = true;
	o->Mtu = 1500;
	o->NatTcpTimeout = 1800;
	o->NatUdpTimeout = 60;
	o->UseDhcp = true;
	FUNC2(&o->DhcpLeaseIPStart, 192, 168, 30, 10);
	FUNC2(&o->DhcpLeaseIPEnd, 192, 168, 30, 200);
	FUNC2(&o->DhcpSubnetMask, 255, 255, 255, 0);
	o->DhcpExpireTimeSpan = 7200;
	o->SaveLog = true;

	FUNC2(&o->DhcpGatewayAddress, 192, 168, 30, 1);
	FUNC2(&o->DhcpDnsServerAddress, 192, 168, 30, 1);

	FUNC1(o->DhcpDomainName, sizeof(o->DhcpDomainName));
}