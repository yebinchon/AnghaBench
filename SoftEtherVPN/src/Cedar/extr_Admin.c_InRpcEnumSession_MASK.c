#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {int NumSession; TYPE_1__* Sessions; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {void* LastCommTime; void* CreatedTime; void* LastCommDormant; void* IsDormant; void* IsDormantEnabled; int /*<<< orphan*/  UniqueId; void* VLanId; int /*<<< orphan*/  RemoteHostname; void* Client_MonitorMode; void* Client_BridgeMode; void* Layer3Mode; void* BridgeMode; void* SecureNATMode; void* LinkMode; void* RemoteSession; void* PacketNum; void* PacketSize; void* CurrentNumTcp; void* MaxNumTcp; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ClientIP; void* Ip; int /*<<< orphan*/  Username; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_SESSION_ITEM ;
typedef  TYPE_2__ RPC_ENUM_SESSION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC9 (int) ; 

void FUNC10(RPC_ENUM_SESSION *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC8(t, sizeof(RPC_ENUM_SESSION));
	FUNC6(p, "HubName", t->HubName, sizeof(t->HubName));
	t->NumSession = FUNC2(p, "Name");
	t->Sessions = FUNC9(sizeof(RPC_ENUM_SESSION_ITEM) * t->NumSession);

	for (i = 0;i < t->NumSession;i++)
	{
		RPC_ENUM_SESSION_ITEM *e = &t->Sessions[i];

		FUNC7(p, "Name", e->Name, sizeof(e->Name), i);
		FUNC7(p, "Username", e->Username, sizeof(e->Username), i);
		e->Ip = FUNC4(p, "Ip", i);
		FUNC5(p, "ClientIP", &e->ClientIP, i);
		FUNC7(p, "Hostname", e->Hostname, sizeof(e->Hostname), i);
		e->MaxNumTcp = FUNC4(p, "MaxNumTcp", i);
		e->CurrentNumTcp = FUNC4(p, "CurrentNumTcp", i);
		e->PacketSize = FUNC3(p, "PacketSize", i);
		e->PacketNum = FUNC3(p, "PacketNum", i);
		e->RemoteSession = FUNC0(p, "RemoteSession", i);
		e->LinkMode = FUNC0(p, "LinkMode", i);
		e->SecureNATMode = FUNC0(p, "SecureNATMode", i);
		e->BridgeMode = FUNC0(p, "BridgeMode", i);
		e->Layer3Mode = FUNC0(p, "Layer3Mode", i);
		e->Client_BridgeMode = FUNC0(p, "Client_BridgeMode", i);
		e->Client_MonitorMode = FUNC0(p, "Client_MonitorMode", i);
		FUNC7(p, "RemoteHostname", e->RemoteHostname, sizeof(e->RemoteHostname), i);
		e->VLanId = FUNC4(p, "VLanId", i);
		FUNC1(p, "UniqueId", e->UniqueId, sizeof(e->UniqueId), i);
		e->IsDormantEnabled = FUNC0(p, "IsDormantEnabled", i);
		e->IsDormant = FUNC0(p, "IsDormant", i);
		e->LastCommDormant = FUNC3(p, "LastCommDormant", i);
		e->CreatedTime = FUNC3(p, "CreatedTime", i);
		e->LastCommTime = FUNC3(p, "LastCommTime", i);
	}
}