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
struct TYPE_3__ {int /*<<< orphan*/  VLanId; int /*<<< orphan*/  NoIPv6DefaultRouterInRAWhenIPv6; int /*<<< orphan*/  NoIPv6DefaultRouterInRA; int /*<<< orphan*/  FilterNonIP; int /*<<< orphan*/  FilterIPv6; int /*<<< orphan*/  FilterIPv4; int /*<<< orphan*/  AutoDisconnect; int /*<<< orphan*/  NoSavePassword; int /*<<< orphan*/  MaxIPv6; int /*<<< orphan*/  NoServerV6; int /*<<< orphan*/  CheckIPv6; int /*<<< orphan*/  NoRoutingV6; int /*<<< orphan*/  DHCPv6NoServer; int /*<<< orphan*/  DHCPv6Filter; int /*<<< orphan*/  RAFilter; int /*<<< orphan*/  RSandRAFilter; int /*<<< orphan*/  NoQoS; int /*<<< orphan*/  MultiLogins; int /*<<< orphan*/  FixPassword; int /*<<< orphan*/  MaxDownload; int /*<<< orphan*/  MaxUpload; int /*<<< orphan*/  MaxIP; int /*<<< orphan*/  MaxMac; int /*<<< orphan*/  TimeOut; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  MonitorPort; int /*<<< orphan*/  NoBroadcastLimiter; int /*<<< orphan*/  NoServer; int /*<<< orphan*/  PrivacyFilter; int /*<<< orphan*/  ArpDhcpOnly; int /*<<< orphan*/  CheckIP; int /*<<< orphan*/  CheckMac; int /*<<< orphan*/  NoRouting; int /*<<< orphan*/  NoBridge; int /*<<< orphan*/  DHCPForce; int /*<<< orphan*/  DHCPNoServer; int /*<<< orphan*/  DHCPFilter; int /*<<< orphan*/  Access; } ;
typedef  TYPE_1__ POLICY ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC2(FOLDER *f, POLICY *p, bool cascade_mode)
{
	// Validate arguments
	if (f == NULL || p == NULL)
	{
		return;
	}

	// Ver 2.0
	if (cascade_mode == false)
	{
		FUNC0(f, "Access", p->Access);
	}

	FUNC0(f, "DHCPFilter", p->DHCPFilter);
	FUNC0(f, "DHCPNoServer", p->DHCPNoServer);
	FUNC0(f, "DHCPForce", p->DHCPForce);

	if (cascade_mode == false)
	{
		FUNC0(f, "NoBridge", p->NoBridge);
		FUNC0(f, "NoRouting", p->NoRouting);
	}

	FUNC0(f, "CheckMac", p->CheckMac);
	FUNC0(f, "CheckIP", p->CheckIP);
	FUNC0(f, "ArpDhcpOnly", p->ArpDhcpOnly);

	if (cascade_mode == false)
	{
		FUNC0(f, "PrivacyFilter", p->PrivacyFilter);
	}

	FUNC0(f, "NoServer", p->NoServer);
	FUNC0(f, "NoBroadcastLimiter", p->NoBroadcastLimiter);

	if (cascade_mode == false)
	{
		FUNC0(f, "MonitorPort", p->MonitorPort);
		FUNC1(f, "MaxConnection", p->MaxConnection);
		FUNC1(f, "TimeOut", p->TimeOut);
	}

	FUNC1(f, "MaxMac", p->MaxMac);
	FUNC1(f, "MaxIP", p->MaxIP);
	FUNC1(f, "MaxUpload", p->MaxUpload);
	FUNC1(f, "MaxDownload", p->MaxDownload);

	if (cascade_mode == false)
	{
		FUNC0(f, "FixPassword", p->FixPassword);
		FUNC1(f, "MultiLogins", p->MultiLogins);
		FUNC0(f, "NoQoS", p->NoQoS);
	}

	// Ver 3.0
	FUNC0(f, "RSandRAFilter", p->RSandRAFilter);
	FUNC0(f, "RAFilter", p->RAFilter);
	FUNC0(f, "DHCPv6Filter", p->DHCPv6Filter);
	FUNC0(f, "DHCPv6NoServer", p->DHCPv6NoServer);

	if (cascade_mode == false)
	{
		FUNC0(f, "NoRoutingV6", p->NoRoutingV6);
	}

	FUNC0(f, "CheckIPv6", p->CheckIPv6);
	FUNC0(f, "NoServerV6", p->NoServerV6);
	FUNC1(f, "MaxIPv6", p->MaxIPv6);

	if (cascade_mode == false)
	{
		FUNC0(f, "NoSavePassword", p->NoSavePassword);
		FUNC1(f, "AutoDisconnect", p->AutoDisconnect);
	}

	FUNC0(f, "FilterIPv4", p->FilterIPv4);
	FUNC0(f, "FilterIPv6", p->FilterIPv6);
	FUNC0(f, "FilterNonIP", p->FilterNonIP);
	FUNC0(f, "NoIPv6DefaultRouterInRA", p->NoIPv6DefaultRouterInRA);
	FUNC0(f, "NoIPv6DefaultRouterInRAWhenIPv6", p->NoIPv6DefaultRouterInRAWhenIPv6);
	FUNC1(f, "VLanId", p->VLanId);
}