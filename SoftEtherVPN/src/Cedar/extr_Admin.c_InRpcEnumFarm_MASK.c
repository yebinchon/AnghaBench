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
struct TYPE_7__ {int NumFarm; TYPE_1__* Farms; } ;
struct TYPE_6__ {void* AssignedBridgeLicense; void* AssignedClientLicense; void* NumHubs; void* NumTcpConnections; void* NumSessions; void* Point; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Ip; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Controller; void* Id; } ;
typedef  TYPE_1__ RPC_ENUM_FARM_ITEM ;
typedef  TYPE_2__ RPC_ENUM_FARM ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC7 (int) ; 

void FUNC8(RPC_ENUM_FARM *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC6(t, sizeof(RPC_ENUM_FARM));
	t->NumFarm = FUNC1(p, "Id");
	t->Farms = FUNC7(sizeof(RPC_ENUM_FARM_ITEM) * t->NumFarm);

	for (i = 0;i < t->NumFarm;i++)
	{
		RPC_ENUM_FARM_ITEM *e = &t->Farms[i];

		e->Id = FUNC3(p, "Id", i);
		e->Controller = FUNC0(p, "Controller", i);
		e->ConnectedTime = FUNC2(p, "ConnectedTime", i);
		e->Ip = FUNC4(p, "Ip", i);
		FUNC5(p, "Hostname", e->Hostname, sizeof(e->Hostname), i);
		e->Point = FUNC3(p, "Point", i);
		e->NumSessions = FUNC3(p, "NumSessions", i);
		e->NumTcpConnections = FUNC3(p, "NumTcpConnections", i);
		e->NumHubs = FUNC3(p, "NumHubs", i);
		e->AssignedClientLicense = FUNC3(p, "AssignedClientLicense", i);
		e->AssignedBridgeLicense = FUNC3(p, "AssignedBridgeLicense", i);
	}
}