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
struct TYPE_5__ {size_t NumFarm; TYPE_1__* Farms; } ;
struct TYPE_4__ {int /*<<< orphan*/  AssignedBridgeLicense; int /*<<< orphan*/  AssignedClientLicense; int /*<<< orphan*/  NumHubs; int /*<<< orphan*/  NumTcpConnections; int /*<<< orphan*/  NumSessions; int /*<<< orphan*/  Point; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Ip; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Controller; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ RPC_ENUM_FARM_ITEM ;
typedef  TYPE_2__ RPC_ENUM_FARM ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(PACK *p, RPC_ENUM_FARM *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC5(p, "FarmMemberList");
	for (i = 0;i < t->NumFarm;i++)
	{
		RPC_ENUM_FARM_ITEM *e = &t->Farms[i];

		FUNC1(p, "Id", e->Id, i, t->NumFarm);
		FUNC0(p, "Controller", e->Controller, i, t->NumFarm);
		FUNC4(p, "ConnectedTime", e->ConnectedTime, i, t->NumFarm);
		FUNC2(p, "Ip", e->Ip, i, t->NumFarm);
		FUNC3(p, "Hostname", e->Hostname, i, t->NumFarm);
		FUNC1(p, "Point", e->Point, i, t->NumFarm);
		FUNC1(p, "NumSessions", e->NumSessions, i, t->NumFarm);
		FUNC1(p, "NumTcpConnections", e->NumTcpConnections, i, t->NumFarm);
		FUNC1(p, "NumHubs", e->NumHubs, i, t->NumFarm);
		FUNC1(p, "AssignedClientLicense", e->AssignedClientLicense, i, t->NumFarm);
		FUNC1(p, "AssignedBridgeLicense", e->AssignedBridgeLicense, i, t->NumFarm);
	}
	FUNC5(p, NULL);
}