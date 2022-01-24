#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  size_t UINT ;
struct TYPE_28__ {TYPE_10__* SessionList; TYPE_1__* Option; } ;
struct TYPE_27__ {int NumSession; TYPE_7__* Sessions; } ;
struct TYPE_26__ {int IsDormantEnabled; int IsDormant; int /*<<< orphan*/  RemoteHostname; scalar_t__ LastCommDormant; int /*<<< orphan*/  UniqueId; int /*<<< orphan*/  Client_MonitorMode; int /*<<< orphan*/  Client_BridgeMode; int /*<<< orphan*/  PacketNum; int /*<<< orphan*/  PacketSize; int /*<<< orphan*/  CurrentNumTcp; int /*<<< orphan*/  VLanId; int /*<<< orphan*/  Layer3Mode; int /*<<< orphan*/  BridgeMode; int /*<<< orphan*/  SecureNATMode; int /*<<< orphan*/  LinkMode; void* LastCommTime; void* CreatedTime; int /*<<< orphan*/  MaxNumTcp; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ClientIP; int /*<<< orphan*/  Ip; int /*<<< orphan*/  Username; int /*<<< orphan*/  Name; } ;
struct TYPE_25__ {int /*<<< orphan*/  Cedar; } ;
struct TYPE_23__ {int /*<<< orphan*/  UniqueId; } ;
struct TYPE_24__ {scalar_t__ LastCommTimeForDormant; int /*<<< orphan*/  lock; scalar_t__ NormalClient; TYPE_4__ NodeInfo; int /*<<< orphan*/  IsMonitorMode; int /*<<< orphan*/  IsBridgeMode; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; TYPE_3__* Connection; int /*<<< orphan*/  VLanId; int /*<<< orphan*/  L3SwitchMode; int /*<<< orphan*/  BridgeMode; int /*<<< orphan*/  SecureNATMode; int /*<<< orphan*/  LinkModeServer; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  Username; int /*<<< orphan*/  Name; } ;
struct TYPE_22__ {TYPE_2__* Tcp; int /*<<< orphan*/  ClientHostname; int /*<<< orphan*/  ClientIp; } ;
struct TYPE_21__ {TYPE_10__* TcpSockList; } ;
struct TYPE_20__ {scalar_t__ DetectDormantSessionInterval; } ;
struct TYPE_19__ {int /*<<< orphan*/  num_item; } ;
typedef  TYPE_5__ SESSION ;
typedef  TYPE_6__ SERVER ;
typedef  TYPE_7__ RPC_ENUM_SESSION_ITEM ;
typedef  TYPE_8__ RPC_ENUM_SESSION ;
typedef  TYPE_9__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (TYPE_10__*,size_t) ; 
 int FUNC8 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 () ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_10__*) ; 
 void* FUNC19 (int) ; 

void FUNC20(SERVER *s, char *hubname, RPC_ENUM_SESSION *t)
{
	HUB *h;
	UINT64 now = FUNC14();
	UINT64 dormant_interval = 0;
	// Validate arguments
	if (s == NULL || hubname == NULL || t == NULL)
	{
		return;
	}

	FUNC10(s->Cedar);
	h = FUNC2(s->Cedar, hubname);
	FUNC17(s->Cedar);

	if (h == NULL)
	{
		t->NumSession = 0;
		t->Sessions = FUNC19(0);
		return;
	}

	if (h->Option != NULL)
	{
		dormant_interval = h->Option->DetectDormantSessionInterval * (UINT64)1000;
	}

	FUNC11(h->SessionList);
	{
		UINT i;
		t->NumSession = FUNC8(h->SessionList);
		t->Sessions = FUNC19(sizeof(RPC_ENUM_SESSION_ITEM) * t->NumSession);

		for (i = 0;i < t->NumSession;i++)
		{
			SESSION *s = FUNC7(h->SessionList, i);
			RPC_ENUM_SESSION_ITEM *e = &t->Sessions[i];
			FUNC9(s->lock);
			{
				FUNC13(e->Name, sizeof(e->Name), s->Name);
				FUNC13(e->Username, sizeof(e->Username), s->Username);
				e->Ip = FUNC6(&s->Connection->ClientIp);
				FUNC1(&e->ClientIP, &s->Connection->ClientIp);
				FUNC13(e->Hostname, sizeof(e->Hostname), s->Connection->ClientHostname);
				e->MaxNumTcp = s->MaxConnection;
				e->CreatedTime = FUNC15(s->CreatedTime);
				e->LastCommTime = FUNC15(s->LastCommTime);
				e->LinkMode = s->LinkModeServer;
				e->SecureNATMode = s->SecureNATMode;
				e->BridgeMode = s->BridgeMode;
				e->Layer3Mode = s->L3SwitchMode;
				e->VLanId = s->VLanId;
				FUNC11(s->Connection->Tcp->TcpSockList);
				{
					e->CurrentNumTcp = s->Connection->Tcp->TcpSockList->num_item;
				}
				FUNC18(s->Connection->Tcp->TcpSockList);
				FUNC9(s->TrafficLock);
				{
					e->PacketSize = FUNC5(s->Traffic);
					e->PacketNum = FUNC4(s->Traffic);
				}
				FUNC16(s->TrafficLock);
				e->Client_BridgeMode = s->IsBridgeMode;
				e->Client_MonitorMode = s->IsMonitorMode;
				FUNC0(e->UniqueId, s->NodeInfo.UniqueId, 16);

				if (s->NormalClient)
				{
					e->IsDormantEnabled = (dormant_interval == 0 ? false : true);
					if (e->IsDormantEnabled)
					{
						if (s->LastCommTimeForDormant == 0)
						{
							e->LastCommDormant = (UINT64)0x7FFFFFFF;
						}
						else
						{
							e->LastCommDormant = now - s->LastCommTimeForDormant;
						}
						if (s->LastCommTimeForDormant == 0)
						{
							e->IsDormant = true;
						}
						else
						{
							if ((s->LastCommTimeForDormant + dormant_interval) < now)
							{
								e->IsDormant = true;
							}
						}
					}
				}
			}
			FUNC16(s->lock);

			FUNC3(e->RemoteHostname, sizeof(e->RemoteHostname));
		}
	}
	FUNC18(h->SessionList);

	FUNC12(h);
}