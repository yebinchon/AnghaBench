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
struct TYPE_4__ {int UseEncrypt; int UseCompress; int HalfConnection; int NoRoutingTracking; int /*<<< orphan*/  HostUniqueKey; void* NoUdpAcceleration; void* FromAdminPack; void* RequireBridgeRoutingMode; void* RequireMonitorMode; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyUsername; int /*<<< orphan*/  ProxyName; void* DisableQoS; void* HideNicInfoWindow; void* HideStatusWindow; void* ConnectionDisconnectSpan; void* AdditionalConnectionInterval; void* MaxConnection; void* RetryInterval; void* NumRetry; void* ProxyPort; void* ProxyType; void* PortUDP; void* Port; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  AccountName; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CLIENT_OPTION ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

void FUNC6(CLIENT_OPTION *c, PACK *p)
{
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC5(c, sizeof(CLIENT_OPTION));

	FUNC4(p, "AccountName", c->AccountName, sizeof(c->AccountName));
	FUNC3(p, "Hostname", c->Hostname, sizeof(c->Hostname));
	c->Port = FUNC2(p, "Port");
	c->PortUDP = FUNC2(p, "PortUDP");
	c->ProxyType = FUNC2(p, "ProxyType");
	c->ProxyPort = FUNC2(p, "ProxyPort");
	c->NumRetry = FUNC2(p, "NumRetry");
	c->RetryInterval = FUNC2(p, "RetryInterval");
	c->MaxConnection = FUNC2(p, "MaxConnection");
	c->AdditionalConnectionInterval = FUNC2(p, "AdditionalConnectionInterval");
	c->ConnectionDisconnectSpan = FUNC2(p, "ConnectionDisconnectSpan");
	c->HideStatusWindow = FUNC0(p, "HideStatusWindow");
	c->HideNicInfoWindow = FUNC0(p, "HideNicInfoWindow");
	c->DisableQoS = FUNC0(p, "DisableQoS");
	FUNC3(p, "ProxyName", c->ProxyName, sizeof(c->ProxyName));
	FUNC3(p, "ProxyUsername", c->ProxyUsername, sizeof(c->ProxyUsername));
	FUNC3(p, "ProxyPassword", c->ProxyPassword, sizeof(c->ProxyPassword));
	FUNC3(p, "CustomHttpHeader", c->CustomHttpHeader, sizeof(c->CustomHttpHeader));
	FUNC3(p, "HubName", c->HubName, sizeof(c->HubName));
	FUNC3(p, "DeviceName", c->DeviceName, sizeof(c->DeviceName));
	c->UseEncrypt = FUNC2(p, "UseEncrypt") ? true : false;
	c->UseCompress = FUNC2(p, "UseCompress") ? true : false;
	c->HalfConnection = FUNC2(p, "HalfConnection") ? true : false;
	c->NoRoutingTracking = FUNC2(p, "NoRoutingTracking") ? true : false;
	c->RequireMonitorMode = FUNC0(p, "RequireMonitorMode");
	c->RequireBridgeRoutingMode = FUNC0(p, "RequireBridgeRoutingMode");
	c->FromAdminPack = FUNC0(p, "FromAdminPack");
	c->NoUdpAcceleration = FUNC0(p, "NoUdpAcceleration");
	FUNC1(p, "HostUniqueKey", c->HostUniqueKey, SHA1_SIZE);
}