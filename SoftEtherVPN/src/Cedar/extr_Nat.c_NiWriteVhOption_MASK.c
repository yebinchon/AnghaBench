#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mac_address ;
struct TYPE_4__ {char* DhcpDomainName; int /*<<< orphan*/  SaveLog; int /*<<< orphan*/  DhcpDnsServerAddress2; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; int /*<<< orphan*/  DhcpExpireTimeSpan; int /*<<< orphan*/  DhcpSubnetMask; int /*<<< orphan*/  DhcpLeaseIPEnd; int /*<<< orphan*/  DhcpLeaseIPStart; int /*<<< orphan*/  UseDhcp; int /*<<< orphan*/  NatUdpTimeout; int /*<<< orphan*/  NatTcpTimeout; int /*<<< orphan*/  Mtu; int /*<<< orphan*/  UseNat; int /*<<< orphan*/  Mask; int /*<<< orphan*/  Ip; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ VH_OPTION ;
struct TYPE_5__ {TYPE_1__ Option; } ;
typedef  TYPE_2__ NAT ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC6(NAT *n, FOLDER *root)
{
	VH_OPTION *o;
	FOLDER *host, *nat, *dhcp;
	char mac_address[MAX_SIZE];
	// Validate arguments
	if (n == NULL || root == NULL)
	{
		return;
	}

	host = FUNC4(root, "VirtualHost");
	nat = FUNC4(root, "VirtualRouter");
	dhcp = FUNC4(root, "VirtualDhcpServer");

	o = &n->Option;

	FUNC5(mac_address, sizeof(mac_address), o->MacAddress);
	FUNC3(host, "VirtualHostMacAddress", mac_address);
	FUNC2(host, "VirtualHostIp", &o->Ip);
	FUNC2(host, "VirtualHostIpSubnetMask", &o->Mask);

	FUNC0(nat, "NatEnabled", o->UseNat);
	FUNC1(nat, "NatMtu", o->Mtu);
	FUNC1(nat, "NatTcpTimeout", o->NatTcpTimeout);
	FUNC1(nat, "NatUdpTimeout", o->NatUdpTimeout);

	FUNC0(dhcp, "DhcpEnabled", o->UseDhcp);
	FUNC2(dhcp, "DhcpLeaseIPStart", &o->DhcpLeaseIPStart);
	FUNC2(dhcp, "DhcpLeaseIPEnd", &o->DhcpLeaseIPEnd);
	FUNC2(dhcp, "DhcpSubnetMask", &o->DhcpSubnetMask);
	FUNC1(dhcp, "DhcpExpireTimeSpan", o->DhcpExpireTimeSpan);
	FUNC2(dhcp, "DhcpGatewayAddress", &o->DhcpGatewayAddress);
	FUNC2(dhcp, "DhcpDnsServerAddress", &o->DhcpDnsServerAddress);
	FUNC2(dhcp, "DhcpDnsServerAddress2", &o->DhcpDnsServerAddress2);
	FUNC3(dhcp, "DhcpDomainName", o->DhcpDomainName);

	FUNC0(root, "SaveLog", o->SaveLog);
}