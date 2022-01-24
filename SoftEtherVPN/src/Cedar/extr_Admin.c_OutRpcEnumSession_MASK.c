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
typedef  size_t UINT ;
struct TYPE_5__ {size_t NumSession; TYPE_1__* Sessions; int /*<<< orphan*/  HubName; } ;
struct TYPE_4__ {int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  LastCommDormant; int /*<<< orphan*/  IsDormant; int /*<<< orphan*/  IsDormantEnabled; int /*<<< orphan*/  UniqueId; int /*<<< orphan*/  VLanId; int /*<<< orphan*/  Client_MonitorMode; int /*<<< orphan*/  Client_BridgeMode; int /*<<< orphan*/  Layer3Mode; int /*<<< orphan*/  BridgeMode; int /*<<< orphan*/  SecureNATMode; int /*<<< orphan*/  LinkMode; int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  RemoteSession; int /*<<< orphan*/  PacketNum; int /*<<< orphan*/  PacketSize; int /*<<< orphan*/  CurrentNumTcp; int /*<<< orphan*/  MaxNumTcp; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ClientIP; int /*<<< orphan*/  Ip; int /*<<< orphan*/  Username; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_SESSION_ITEM ;
typedef  TYPE_2__ RPC_ENUM_SESSION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

void FUNC10(PACK *p, RPC_ENUM_SESSION *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}
	FUNC6(p, "HubName", t->HubName);

	FUNC9(p, "SessionList");
	for (i = 0;i < t->NumSession;i++)
	{
		RPC_ENUM_SESSION_ITEM *e = &t->Sessions[i];

		FUNC7(p, "Name", e->Name, i, t->NumSession);
		FUNC7(p, "Username", e->Username, i, t->NumSession);
		FUNC4(p, "Ip", e->Ip, i, t->NumSession);
		FUNC5(p, "ClientIP", &e->ClientIP, i, t->NumSession);
		FUNC7(p, "Hostname", e->Hostname, i, t->NumSession);
		FUNC3(p, "MaxNumTcp", e->MaxNumTcp, i, t->NumSession);
		FUNC3(p, "CurrentNumTcp", e->CurrentNumTcp, i, t->NumSession);
		FUNC2(p, "PacketSize", e->PacketSize, i, t->NumSession);
		FUNC2(p, "PacketNum", e->PacketNum, i, t->NumSession);
		FUNC0(p, "RemoteSession", e->RemoteSession, i, t->NumSession);
		FUNC7(p, "RemoteHostname", e->RemoteHostname, i, t->NumSession);
		FUNC0(p, "LinkMode", e->LinkMode, i, t->NumSession);
		FUNC0(p, "SecureNATMode", e->SecureNATMode, i, t->NumSession);
		FUNC0(p, "BridgeMode", e->BridgeMode, i, t->NumSession);
		FUNC0(p, "Layer3Mode", e->Layer3Mode, i, t->NumSession);
		FUNC0(p, "Client_BridgeMode", e->Client_BridgeMode, i, t->NumSession);
		FUNC0(p, "Client_MonitorMode", e->Client_MonitorMode, i, t->NumSession);
		FUNC3(p, "VLanId", e->VLanId, i, t->NumSession);
		FUNC1(p, "UniqueId", e->UniqueId, sizeof(e->UniqueId), i, t->NumSession);
		FUNC0(p, "IsDormantEnabled", e->IsDormantEnabled, i, t->NumSession);
		FUNC0(p, "IsDormant", e->IsDormant, i, t->NumSession);
		FUNC8(p, "LastCommDormant", e->LastCommDormant, i, t->NumSession);
		FUNC8(p, "CreatedTime", e->CreatedTime, i, t->NumSession);
		FUNC8(p, "LastCommTime", e->LastCommTime, i, t->NumSession);
	}
	FUNC9(p, NULL);
}