#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  Access ; 
 int /*<<< orphan*/  ArpDhcpOnly ; 
 int /*<<< orphan*/  AutoDisconnect ; 
 int /*<<< orphan*/  CheckIP ; 
 int /*<<< orphan*/  CheckIPv6 ; 
 int /*<<< orphan*/  CheckMac ; 
 int /*<<< orphan*/  DHCPFilter ; 
 int /*<<< orphan*/  DHCPForce ; 
 int /*<<< orphan*/  DHCPNoServer ; 
 int /*<<< orphan*/  DHCPv6Filter ; 
 int /*<<< orphan*/  DHCPv6NoServer ; 
 int /*<<< orphan*/  FilterIPv4 ; 
 int /*<<< orphan*/  FilterIPv6 ; 
 int /*<<< orphan*/  FilterNonIP ; 
 int /*<<< orphan*/  FixPassword ; 
 int /*<<< orphan*/  MaxConnection ; 
 int /*<<< orphan*/  MaxDownload ; 
 int /*<<< orphan*/  MaxIP ; 
 int /*<<< orphan*/  MaxIPv6 ; 
 int /*<<< orphan*/  MaxMac ; 
 int /*<<< orphan*/  MaxUpload ; 
 int /*<<< orphan*/  MonitorPort ; 
 int /*<<< orphan*/  MultiLogins ; 
 int /*<<< orphan*/  NoBridge ; 
 int /*<<< orphan*/  NoBroadcastLimiter ; 
 int /*<<< orphan*/  NoIPv6DefaultRouterInRA ; 
 int /*<<< orphan*/  NoIPv6DefaultRouterInRAWhenIPv6 ; 
 int /*<<< orphan*/  NoQoS ; 
 int /*<<< orphan*/  NoRouting ; 
 int /*<<< orphan*/  NoRoutingV6 ; 
 int /*<<< orphan*/  NoSavePassword ; 
 int /*<<< orphan*/  NoServer ; 
 int /*<<< orphan*/  NoServerV6 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  PrivacyFilter ; 
 int /*<<< orphan*/  RAFilter ; 
 int /*<<< orphan*/  RSandRAFilter ; 
 int /*<<< orphan*/  TimeOut ; 
 int /*<<< orphan*/  VLanId ; 

void FUNC3(PACK *p, POLICY *y)
{
	// Validate arguments
	if (p == NULL || y == NULL)
	{
		return;
	}

	// Bool value
	// Ver 2
	FUNC0("Access", Access);
	FUNC0("DHCPFilter", DHCPFilter);
	FUNC0("DHCPNoServer", DHCPNoServer);
	FUNC0("DHCPForce", DHCPForce);
	FUNC0("NoBridge", NoBridge);
	FUNC0("NoRouting", NoRouting);
	FUNC0("PrivacyFilter", PrivacyFilter);
	FUNC0("NoServer", NoServer);
	FUNC0("CheckMac", CheckMac);
	FUNC0("CheckIP", CheckIP);
	FUNC0("ArpDhcpOnly", ArpDhcpOnly);
	FUNC0("MonitorPort", MonitorPort);
	FUNC0("NoBroadcastLimiter", NoBroadcastLimiter);
	FUNC0("FixPassword", FixPassword);
	FUNC0("NoQoS", NoQoS);
	// Ver 3
	FUNC0("RSandRAFilter", RSandRAFilter);
	FUNC0("RAFilter", RAFilter);
	FUNC0("DHCPv6Filter", DHCPv6Filter);
	FUNC0("DHCPv6NoServer", DHCPv6NoServer);
	FUNC0("NoRoutingV6", NoRoutingV6);
	FUNC0("CheckIPv6", CheckIPv6);
	FUNC0("NoServerV6", NoServerV6);
	FUNC0("NoSavePassword", NoSavePassword);
	FUNC0("FilterIPv4", FilterIPv4);
	FUNC0("FilterIPv6", FilterIPv6);
	FUNC0("FilterNonIP", FilterNonIP);
	FUNC0("NoIPv6DefaultRouterInRA", NoIPv6DefaultRouterInRA);
	FUNC0("NoIPv6DefaultRouterInRAWhenIPv6", NoIPv6DefaultRouterInRAWhenIPv6);

	// UINT value
	// Ver 2
	FUNC1("MaxConnection", MaxConnection);
	FUNC1("TimeOut", TimeOut);
	FUNC1("MaxMac", MaxMac);
	FUNC1("MaxIP", MaxIP);
	FUNC1("MaxUpload", MaxUpload);
	FUNC1("MaxDownload", MaxDownload);
	FUNC1("MultiLogins", MultiLogins);
	// Ver 3
	FUNC1("MaxIPv6", MaxIPv6);
	FUNC1("AutoDisconnect", AutoDisconnect);
	FUNC1("VLanId", VLanId);

	// Ver 3 flag
	FUNC2(p, "policy:Ver3", true);
}