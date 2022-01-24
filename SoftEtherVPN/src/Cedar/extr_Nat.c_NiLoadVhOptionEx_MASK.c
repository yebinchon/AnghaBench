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
typedef  int /*<<< orphan*/  mac_address ;
struct TYPE_7__ {char* DhcpDomainName; char* DhcpPushRoutes; int ApplyDhcpPushRoutes; void* SaveLog; int /*<<< orphan*/  DhcpDnsServerAddress2; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; void* DhcpExpireTimeSpan; int /*<<< orphan*/  DhcpSubnetMask; int /*<<< orphan*/  DhcpLeaseIPEnd; int /*<<< orphan*/  DhcpLeaseIPStart; void* UseDhcp; void* NatUdpTimeout; void* NatTcpTimeout; void* Mtu; void* UseNat; int /*<<< orphan*/  Mask; int /*<<< orphan*/  Ip; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ VH_OPTION ;
struct TYPE_8__ {int Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 TYPE_2__* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

void FUNC13(VH_OPTION *o, FOLDER *root)
{
	FOLDER *host, *nat, *dhcp;
	char mac_address[MAX_SIZE];
	// Validate arguments
	if (o == NULL || root == NULL)
	{
		return;
	}

	host = FUNC1(root, "VirtualHost");
	nat = FUNC1(root, "VirtualRouter");
	dhcp = FUNC1(root, "VirtualDhcpServer");

	FUNC12(o, sizeof(VH_OPTION));

	FUNC7(o->MacAddress);
	if (FUNC4(host, "VirtualHostMacAddress", mac_address, sizeof(mac_address)))
	{
		BUF *b = FUNC10(mac_address);
		if (b != NULL)
		{
			if (b->Size == 6)
			{
				FUNC5(o->MacAddress, b->Buf, 6);
			}
		}
		FUNC6(b);
	}
	FUNC3(host, "VirtualHostIp", &o->Ip);
	FUNC3(host, "VirtualHostIpSubnetMask", &o->Mask);

	o->UseNat = FUNC0(nat, "NatEnabled");
	o->Mtu = FUNC2(nat, "NatMtu");
	o->NatTcpTimeout = FUNC2(nat, "NatTcpTimeout");
	o->NatUdpTimeout = FUNC2(nat, "NatUdpTimeout");

	o->UseDhcp = FUNC0(dhcp, "DhcpEnabled");
	FUNC3(dhcp, "DhcpLeaseIPStart", &o->DhcpLeaseIPStart);
	FUNC3(dhcp, "DhcpLeaseIPEnd", &o->DhcpLeaseIPEnd);
	FUNC3(dhcp, "DhcpSubnetMask", &o->DhcpSubnetMask);
	o->DhcpExpireTimeSpan = FUNC2(dhcp, "DhcpExpireTimeSpan");
	FUNC3(dhcp, "DhcpGatewayAddress", &o->DhcpGatewayAddress);
	FUNC3(dhcp, "DhcpDnsServerAddress", &o->DhcpDnsServerAddress);
	FUNC3(dhcp, "DhcpDnsServerAddress2", &o->DhcpDnsServerAddress2);
	FUNC4(dhcp, "DhcpDomainName", o->DhcpDomainName, sizeof(o->DhcpDomainName));

	FUNC4(dhcp, "DhcpPushRoutes", o->DhcpPushRoutes, sizeof(o->DhcpPushRoutes));

// Test code
//	StrCpy(o->DhcpPushRoutes, sizeof(o->DhcpPushRoutes),
//		"130.158.6.0/24/192.168.9.2 130.158.80.244/255.255.255.255/192.168.9.2");

	FUNC8(o->DhcpPushRoutes, sizeof(o->DhcpPushRoutes), o->DhcpPushRoutes);
	o->ApplyDhcpPushRoutes = true;

	FUNC11(o->DhcpDomainName);
	if (FUNC9(o->DhcpDomainName) == 0)
	{
		//GetDomainName(o->DhcpDomainName, sizeof(o->DhcpDomainName));
	}

	o->SaveLog = FUNC0(root, "SaveLog");
}