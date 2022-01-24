#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_19__ {TYPE_1__* Server; } ;
struct TYPE_18__ {int /*<<< orphan*/  AssignedClientLicense; int /*<<< orphan*/  AssignedBridgeLicense; int /*<<< orphan*/  CurrentTcpConnections; int /*<<< orphan*/  CurrentSessions; int /*<<< orphan*/  CreatedTick; } ;
struct TYPE_17__ {int Ip; int /*<<< orphan*/  HubList; void* AssignedClientLicense; void* AssignedBridgeLicense; void* NumTcpConnections; void* NumSessions; int /*<<< orphan*/  Point; int /*<<< orphan*/  hostname; int /*<<< orphan*/  ConnectedTime; scalar_t__ Me; } ;
struct TYPE_16__ {int NumFarm; TYPE_2__* Farms; } ;
struct TYPE_15__ {int Ip; void* NumHubs; void* AssignedClientLicense; void* AssignedBridgeLicense; void* NumTcpConnections; void* NumSessions; int /*<<< orphan*/  Point; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ConnectedTime; scalar_t__ Controller; int /*<<< orphan*/  Id; } ;
struct TYPE_14__ {scalar_t__ ServerType; int /*<<< orphan*/  FarmMemberList; TYPE_5__* Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ENUM_FARM_ITEM ;
typedef  TYPE_3__ RPC_ENUM_FARM ;
typedef  TYPE_4__ FARM_MEMBER ;
typedef  TYPE_5__ CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t ERR_NOT_FARM_CONTROLLER ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC11 (int) ; 

UINT FUNC12(ADMIN *a, RPC_ENUM_FARM *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT i;

	FUNC1(t);
	FUNC10(t, sizeof(RPC_ENUM_FARM));

	if (s->ServerType != SERVER_TYPE_FARM_CONTROLLER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	FUNC10(t, sizeof(RPC_ENUM_FARM));

	FUNC5(s->FarmMemberList);
	{
		t->NumFarm = FUNC4(s->FarmMemberList);
		t->Farms = FUNC11(sizeof(RPC_ENUM_FARM_ITEM) * t->NumFarm);

		for (i = 0;i < t->NumFarm;i++)
		{
			FARM_MEMBER *f = FUNC3(s->FarmMemberList, i);
			RPC_ENUM_FARM_ITEM *e = &t->Farms[i];

			e->Id = FUNC6(f);
			e->Controller = f->Me;

			if (e->Controller)
			{
				e->ConnectedTime = FUNC8(c->CreatedTick);
				e->Ip = 0x0100007f;
				FUNC2(e->Hostname, sizeof(e->Hostname));
				e->Point = f->Point;
				e->NumSessions = FUNC0(c->CurrentSessions);
				e->NumTcpConnections = FUNC0(c->CurrentTcpConnections);

				e->AssignedBridgeLicense = FUNC0(c->AssignedBridgeLicense);
				e->AssignedClientLicense = FUNC0(c->AssignedClientLicense);
			}
			else
			{
				e->ConnectedTime = f->ConnectedTime;
				e->Ip = f->Ip;
				FUNC7(e->Hostname, sizeof(e->Hostname), f->hostname);
				e->Point = f->Point;
				e->NumSessions = f->NumSessions;
				e->NumTcpConnections = f->NumTcpConnections;

				e->AssignedBridgeLicense = f->AssignedBridgeLicense;
				e->AssignedClientLicense = f->AssignedClientLicense;
			}
			e->NumHubs = FUNC4(f->HubList);
		}
	}
	FUNC9(s->FarmMemberList);

	return ERR_NO_ERROR;
}