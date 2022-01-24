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
struct TYPE_4__ {void* VLanId; void* NoIPv6DefaultRouterInRAWhenIPv6; void* NoIPv6DefaultRouterInRA; void* FilterNonIP; void* FilterIPv6; void* FilterIPv4; void* AutoDisconnect; void* NoSavePassword; void* MaxIPv6; void* NoServerV6; void* CheckIPv6; void* NoRoutingV6; void* DHCPv6NoServer; void* DHCPv6Filter; void* RAFilter; void* RSandRAFilter; void* NoQoS; void* MultiLogins; void* FixPassword; void* MaxDownload; void* MaxUpload; void* MaxIP; void* MaxMac; void* TimeOut; void* MaxConnection; void* MonitorPort; void* NoBroadcastLimiter; void* NoServer; void* PrivacyFilter; void* ArpDhcpOnly; void* CheckIP; void* CheckMac; void* NoRouting; void* NoBridge; void* DHCPForce; void* DHCPNoServer; void* DHCPFilter; void* Access; } ;
typedef  TYPE_1__ POLICY ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(POLICY *p, FOLDER *f)
{
	// Validate arguments
	if (f == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, sizeof(POLICY));

	// Ver 2
	p->Access = FUNC0(f, "Access");
	p->DHCPFilter = FUNC0(f, "DHCPFilter");
	p->DHCPNoServer = FUNC0(f, "DHCPNoServer");
	p->DHCPForce = FUNC0(f, "DHCPForce");
	p->NoBridge = FUNC0(f, "NoBridge");
	p->NoRouting = FUNC0(f, "NoRouting");
	p->CheckMac = FUNC0(f, "CheckMac");
	p->CheckIP = FUNC0(f, "CheckIP");
	p->ArpDhcpOnly = FUNC0(f, "ArpDhcpOnly");
	p->PrivacyFilter = FUNC0(f, "PrivacyFilter");
	p->NoServer = FUNC0(f, "NoServer");
	p->NoBroadcastLimiter = FUNC0(f, "NoBroadcastLimiter");
	p->MonitorPort = FUNC0(f, "MonitorPort");
	p->MaxConnection = FUNC1(f, "MaxConnection");
	p->TimeOut = FUNC1(f, "TimeOut");
	p->MaxMac = FUNC1(f, "MaxMac");
	p->MaxIP = FUNC1(f, "MaxIP");
	p->MaxUpload = FUNC1(f, "MaxUpload");
	p->MaxDownload = FUNC1(f, "MaxDownload");
	p->FixPassword = FUNC0(f, "FixPassword");
	p->MultiLogins = FUNC1(f, "MultiLogins");
	p->NoQoS = FUNC0(f, "NoQoS");

	// Ver 3
	p->RSandRAFilter = FUNC0(f, "RSandRAFilter");
	p->RAFilter = FUNC0(f, "RAFilter");
	p->DHCPv6Filter = FUNC0(f, "DHCPv6Filter");
	p->DHCPv6NoServer = FUNC0(f, "DHCPv6NoServer");
	p->NoRoutingV6 = FUNC0(f, "NoRoutingV6");
	p->CheckIPv6 = FUNC0(f, "CheckIPv6");
	p->NoServerV6 = FUNC0(f, "NoServerV6");
	p->MaxIPv6 = FUNC1(f, "MaxIPv6");
	p->NoSavePassword = FUNC0(f, "NoSavePassword");
	p->AutoDisconnect = FUNC1(f, "AutoDisconnect");
	p->FilterIPv4 = FUNC0(f, "FilterIPv4");
	p->FilterIPv6 = FUNC0(f, "FilterIPv6");
	p->FilterNonIP = FUNC0(f, "FilterNonIP");
	p->NoIPv6DefaultRouterInRA = FUNC0(f, "NoIPv6DefaultRouterInRA");
	p->NoIPv6DefaultRouterInRAWhenIPv6 = FUNC0(f, "NoIPv6DefaultRouterInRAWhenIPv6");
	p->VLanId = FUNC1(f, "VLanId");
}