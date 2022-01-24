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
struct TYPE_9__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  HostUniqueKey; scalar_t__ FromAdminPack; scalar_t__ NoUdpAcceleration; scalar_t__ DisableQoS; scalar_t__ RequireBridgeRoutingMode; scalar_t__ RequireMonitorMode; int /*<<< orphan*/  ConnectionDisconnectSpan; scalar_t__ HideNicInfoWindow; scalar_t__ HideStatusWindow; int /*<<< orphan*/  AdditionalConnectionInterval; int /*<<< orphan*/  DeviceName; scalar_t__ NoRoutingTracking; scalar_t__ HalfConnection; scalar_t__ UseCompress; scalar_t__ UseEncrypt; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  HubName; int /*<<< orphan*/  RetryInterval; int /*<<< orphan*/  NumRetry; int /*<<< orphan*/  CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyUsername; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyName; int /*<<< orphan*/  ProxyType; int /*<<< orphan*/  PortUDP; int /*<<< orphan*/  Port; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  AccountName; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CLIENT_OPTION ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 

void FUNC10(FOLDER *f, CLIENT_OPTION *o)
{
	BUF *b;
	// Validate arguments
	if (f == NULL || o == NULL)
	{
		return;
	}

	FUNC5(f, "AccountName", o->AccountName);
	FUNC4(f, "Hostname", o->Hostname);
	FUNC3(f, "Port", o->Port);
	FUNC3(f, "PortUDP", o->PortUDP);
	FUNC3(f, "ProxyType", o->ProxyType);
	FUNC4(f, "ProxyName", o->ProxyName);
	FUNC3(f, "ProxyPort", o->ProxyPort);
	FUNC4(f, "ProxyUsername", o->ProxyUsername);
	b = FUNC6(o->ProxyPassword);
	FUNC2(f, "ProxyPassword", b->Buf, b->Size);
	FUNC7(b);
	FUNC4(f, "CustomHttpHeader", o->CustomHttpHeader);
	FUNC3(f, "NumRetry", o->NumRetry);
	FUNC3(f, "RetryInterval", o->RetryInterval);
	FUNC4(f, "HubName", o->HubName);
	FUNC3(f, "MaxConnection", o->MaxConnection);
	FUNC0(f, "UseEncrypt", o->UseEncrypt);
	FUNC0(f, "UseCompress", o->UseCompress);
	FUNC0(f, "HalfConnection", o->HalfConnection);
	FUNC0(f, "NoRoutingTracking", o->NoRoutingTracking);
	FUNC4(f, "DeviceName", o->DeviceName);
	FUNC3(f, "AdditionalConnectionInterval", o->AdditionalConnectionInterval);
	FUNC0(f, "HideStatusWindow", o->HideStatusWindow);
	FUNC0(f, "HideNicInfoWindow", o->HideNicInfoWindow);
	FUNC3(f, "ConnectionDisconnectSpan", o->ConnectionDisconnectSpan);
	FUNC0(f, "RequireMonitorMode", o->RequireMonitorMode);
	FUNC0(f, "RequireBridgeRoutingMode", o->RequireBridgeRoutingMode);
	FUNC0(f, "DisableQoS", o->DisableQoS);
	FUNC0(f, "NoUdpAcceleration", o->NoUdpAcceleration);

	if (o->FromAdminPack)
	{
		FUNC0(f, "FromAdminPack", o->FromAdminPack);
	}

	if (FUNC8(o->HostUniqueKey, SHA1_SIZE) == false)
	{
		BUF *b = FUNC9(o->HostUniqueKey, SHA1_SIZE);
		FUNC1(f, "HostUniqueKey", b);
		FUNC7(b);
	}
}