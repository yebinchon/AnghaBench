#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_21__ {TYPE_3__* Server; } ;
struct TYPE_20__ {int Ip; int NumPort; void* NumTcpConnections; void* NumSessions; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  Ports; int /*<<< orphan*/  Point; int /*<<< orphan*/  hostname; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  HubList; int /*<<< orphan*/  Weight; int /*<<< orphan*/  Me; } ;
struct TYPE_19__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  DynamicHub; } ;
struct TYPE_18__ {int /*<<< orphan*/  HubName; int /*<<< orphan*/  DynamicHub; } ;
struct TYPE_17__ {size_t Id; size_t NumFarmHub; int Ip; int NumPort; void* NumTcpConnections; void* NumSessions; void* ServerCert; int /*<<< orphan*/ * Ports; int /*<<< orphan*/  Point; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Controller; TYPE_5__* FarmHubs; int /*<<< orphan*/  Weight; } ;
struct TYPE_16__ {scalar_t__ ServerType; int /*<<< orphan*/  FarmMemberList; TYPE_1__* Cedar; int /*<<< orphan*/  ServerListenerList; } ;
struct TYPE_15__ {int /*<<< orphan*/  Port; scalar_t__ Enabled; } ;
struct TYPE_14__ {int /*<<< orphan*/  CurrentTcpConnections; int /*<<< orphan*/  CurrentSessions; int /*<<< orphan*/  ServerX; int /*<<< orphan*/  CreatedTick; } ;
typedef  TYPE_2__ SERVER_LISTENER ;
typedef  TYPE_3__ SERVER ;
typedef  TYPE_4__ RPC_FARM_INFO ;
typedef  TYPE_5__ RPC_FARM_HUB ;
typedef  TYPE_6__ HUB_LIST ;
typedef  TYPE_7__ FARM_MEMBER ;
typedef  TYPE_8__ ADMIN ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t ERR_NOT_FARM_CONTROLLER ; 
 size_t ERR_NO_ERROR ; 
 size_t ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int) ; 
 void* FUNC14 (int) ; 

UINT FUNC15(ADMIN *a, RPC_FARM_INFO *t)
{
	SERVER *s = a->Server;
	UINT id = t->Id;
	UINT i;
	UINT ret = ERR_NO_ERROR;

	FUNC3(t);
	FUNC13(t, sizeof(RPC_FARM_INFO));

	if (s->ServerType != SERVER_TYPE_FARM_CONTROLLER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	FUNC9(s->FarmMemberList);
	{
		if (FUNC5(s->FarmMemberList, id))
		{
			FARM_MEMBER *f = FUNC8(s->FarmMemberList, id);

			t->Id = id;
			t->Controller = f->Me;
			t->Weight = f->Weight;

			FUNC9(f->HubList);
			{
				t->NumFarmHub = FUNC7(f->HubList);
				t->FarmHubs = FUNC14(sizeof(RPC_FARM_HUB) * t->NumFarmHub);

				for (i = 0;i < t->NumFarmHub;i++)
				{
					RPC_FARM_HUB *h = &t->FarmHubs[i];
					HUB_LIST *hh = FUNC6(f->HubList, i);

					h->DynamicHub = hh->DynamicHub;
					FUNC10(h->HubName, sizeof(h->HubName), hh->Name);
				}
			}
			FUNC12(f->HubList);

			if (t->Controller)
			{
				t->ConnectedTime = FUNC11(s->Cedar->CreatedTick);
				t->Ip = 0x0100007f;
				FUNC4(t->Hostname, sizeof(t->Hostname));
				t->Point = f->Point;

				FUNC9(s->ServerListenerList);
				{
					UINT i, n;
					t->NumPort = 0;
					for (i = 0;i < FUNC7(s->ServerListenerList);i++)
					{
						SERVER_LISTENER *o = FUNC6(s->ServerListenerList, i);
						if (o->Enabled)
						{
							t->NumPort++;
						}
					}
					t->Ports = FUNC14(sizeof(UINT) * t->NumPort);
					n = 0;
					for (i = 0;i < FUNC7(s->ServerListenerList);i++)
					{
						SERVER_LISTENER *o = FUNC6(s->ServerListenerList, i);
						if (o->Enabled)
						{
							t->Ports[n++] = o->Port;
						}
					}
				}
				FUNC12(s->ServerListenerList);

				t->ServerCert = FUNC0(s->Cedar->ServerX);
				t->NumSessions = FUNC2(s->Cedar->CurrentSessions);
				t->NumTcpConnections = FUNC2(s->Cedar->CurrentTcpConnections);
			}
			else
			{
				t->ConnectedTime = f->ConnectedTime;
				t->Ip = f->Ip;
				FUNC10(t->Hostname, sizeof(t->Hostname), f->hostname);
				t->Point = f->Point;
				t->NumPort = f->NumPort;
				t->Ports = FUNC14(sizeof(UINT) * t->NumPort);
				FUNC1(t->Ports, f->Ports, sizeof(UINT) * t->NumPort);
				t->ServerCert = FUNC0(f->ServerCert);
				t->NumSessions = f->NumSessions;
				t->NumTcpConnections = f->NumTcpConnections;
			}
		}
		else
		{
			ret = ERR_OBJECT_NOT_FOUND;
		}
	}
	FUNC12(s->FarmMemberList);

	return ret;
}