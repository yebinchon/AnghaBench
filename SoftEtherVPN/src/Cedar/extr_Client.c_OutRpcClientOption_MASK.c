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
struct TYPE_3__ {int /*<<< orphan*/  HostUniqueKey; int /*<<< orphan*/  NoUdpAcceleration; int /*<<< orphan*/  FromAdminPack; int /*<<< orphan*/  DisableQoS; int /*<<< orphan*/  RequireBridgeRoutingMode; int /*<<< orphan*/  RequireMonitorMode; int /*<<< orphan*/  HideNicInfoWindow; int /*<<< orphan*/  HideStatusWindow; int /*<<< orphan*/  ConnectionDisconnectSpan; int /*<<< orphan*/  AdditionalConnectionInterval; int /*<<< orphan*/  NoRoutingTracking; int /*<<< orphan*/  HalfConnection; int /*<<< orphan*/  UseCompress; int /*<<< orphan*/  UseEncrypt; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  RetryInterval; int /*<<< orphan*/  NumRetry; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyType; int /*<<< orphan*/  PortUDP; int /*<<< orphan*/  Port; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyUsername; int /*<<< orphan*/  ProxyName; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  AccountName; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 

void FUNC5(PACK *p, CLIENT_OPTION *c)
{
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC4(p, "AccountName", c->AccountName);
	FUNC3(p, "Hostname", c->Hostname);
	FUNC3(p, "ProxyName", c->ProxyName);
	FUNC3(p, "ProxyUsername", c->ProxyUsername);
	FUNC3(p, "ProxyPassword", c->ProxyPassword);
	FUNC3(p, "CustomHttpHeader", c->CustomHttpHeader);
	FUNC3(p, "HubName", c->HubName);
	FUNC3(p, "DeviceName", c->DeviceName);
	FUNC2(p, "Port", c->Port);
	FUNC2(p, "PortUDP", c->PortUDP);
	FUNC2(p, "ProxyType", c->ProxyType);
	FUNC2(p, "ProxyPort", c->ProxyPort);
	FUNC2(p, "NumRetry", c->NumRetry);
	FUNC2(p, "RetryInterval", c->RetryInterval);
	FUNC2(p, "MaxConnection", c->MaxConnection);
	FUNC0(p, "UseEncrypt", c->UseEncrypt);
	FUNC0(p, "UseCompress", c->UseCompress);
	FUNC0(p, "HalfConnection", c->HalfConnection);
	FUNC0(p, "NoRoutingTracking", c->NoRoutingTracking);
	FUNC2(p, "AdditionalConnectionInterval", c->AdditionalConnectionInterval);
	FUNC2(p, "ConnectionDisconnectSpan", c->ConnectionDisconnectSpan);
	FUNC0(p, "HideStatusWindow", c->HideStatusWindow);
	FUNC0(p, "HideNicInfoWindow", c->HideNicInfoWindow);
	FUNC0(p, "RequireMonitorMode", c->RequireMonitorMode);
	FUNC0(p, "RequireBridgeRoutingMode", c->RequireBridgeRoutingMode);
	FUNC0(p, "DisableQoS", c->DisableQoS);
	FUNC0(p, "FromAdminPack", c->FromAdminPack);
	FUNC0(p, "NoUdpAcceleration", c->NoUdpAcceleration);
	FUNC1(p, "HostUniqueKey", c->HostUniqueKey, SHA1_SIZE);
}