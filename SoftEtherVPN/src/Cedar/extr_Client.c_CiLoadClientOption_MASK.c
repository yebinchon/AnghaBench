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
struct TYPE_9__ {scalar_t__ Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  HostUniqueKey; void* NoUdpAcceleration; void* FromAdminPack; void* DisableQoS; void* RequireBridgeRoutingMode; void* RequireMonitorMode; void* ConnectionDisconnectSpan; void* HideNicInfoWindow; void* HideStatusWindow; void* AdditionalConnectionInterval; int /*<<< orphan*/  DeviceName; void* NoRoutingTracking; void* HalfConnection; void* UseCompress; void* UseEncrypt; void* MaxConnection; int /*<<< orphan*/  HubName; void* RetryInterval; void* NumRetry; int /*<<< orphan*/  CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyUsername; void* ProxyPort; int /*<<< orphan*/  ProxyName; void* ProxyType; void* PortUDP; void* Port; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  AccountName; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ CLIENT_OPTION ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC10 (int) ; 

CLIENT_OPTION *FUNC11(FOLDER *f)
{
	CLIENT_OPTION *o;
	char *s;
	BUF *b;
	// Validate arguments
	if (f == NULL)
	{
		return NULL;
	}

	o = FUNC10(sizeof(CLIENT_OPTION));

	FUNC4(f, "AccountName", o->AccountName, sizeof(o->AccountName));
	FUNC3(f, "Hostname", o->Hostname, sizeof(o->Hostname));
	o->Port = FUNC2(f, "Port");
	o->PortUDP = FUNC2(f, "PortUDP");
	o->ProxyType = FUNC2(f, "ProxyType");
	FUNC3(f, "ProxyName", o->ProxyName, sizeof(o->ProxyName));
	o->ProxyPort = FUNC2(f, "ProxyPort");
	FUNC3(f, "ProxyUsername", o->ProxyUsername, sizeof(o->ProxyUsername));
	b = FUNC1(f, "ProxyPassword");
	s = FUNC6(b);
	FUNC9(o->ProxyPassword, sizeof(o->ProxyPassword), s);
	FUNC7(s);
	FUNC8(b);
	FUNC3(f, "CustomHttpHeader", o->CustomHttpHeader, sizeof(o->CustomHttpHeader));
	o->NumRetry = FUNC2(f, "NumRetry");
	o->RetryInterval = FUNC2(f, "RetryInterval");
	FUNC3(f, "HubName", o->HubName, sizeof(o->HubName));
	o->MaxConnection = FUNC2(f, "MaxConnection");
	o->UseEncrypt = FUNC0(f, "UseEncrypt");
	o->UseCompress = FUNC0(f, "UseCompress");
	o->HalfConnection = FUNC0(f, "HalfConnection");
	o->NoRoutingTracking = FUNC0(f, "NoRoutingTracking");
	FUNC3(f, "DeviceName", o->DeviceName, sizeof(o->DeviceName));
	o->AdditionalConnectionInterval = FUNC2(f, "AdditionalConnectionInterval");
	o->HideStatusWindow = FUNC0(f, "HideStatusWindow");
	o->HideNicInfoWindow = FUNC0(f, "HideNicInfoWindow");
	o->ConnectionDisconnectSpan = FUNC2(f, "ConnectionDisconnectSpan");
	o->RequireMonitorMode = FUNC0(f, "RequireMonitorMode");
	o->RequireBridgeRoutingMode = FUNC0(f, "RequireBridgeRoutingMode");
	o->DisableQoS = FUNC0(f, "DisableQoS");
	o->FromAdminPack = FUNC0(f, "FromAdminPack");
	o->NoUdpAcceleration = FUNC0(f, "NoUdpAcceleration");
	
	b = FUNC1(f, "HostUniqueKey");
	if (b != NULL)
	{
		if (b->Size == SHA1_SIZE)
		{
			FUNC5(o->HostUniqueKey, b->Buf, SHA1_SIZE);
		}

		FUNC8(b);
	}

	return o;
}