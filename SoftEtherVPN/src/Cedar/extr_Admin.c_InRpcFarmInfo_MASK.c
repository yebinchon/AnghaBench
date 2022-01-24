#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_6__ {int NumPort; int NumFarmHub; void* Weight; void* NumTcpConnections; void* NumSessions; TYPE_1__* FarmHubs; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/ * Ports; void* Point; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Ip; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Controller; void* Id; } ;
struct TYPE_5__ {int /*<<< orphan*/  DynamicHub; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_2__ RPC_FARM_INFO ;
typedef  int /*<<< orphan*/  RPC_FARM_HUB ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 void* FUNC11 (int) ; 

void FUNC12(RPC_FARM_INFO *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	FUNC10(t, sizeof(RPC_FARM_INFO));
	t->Id = FUNC3(p, "Id");
	t->Controller = FUNC0(p, "Controller");
	t->ConnectedTime = FUNC4(p, "ConnectedTime");
	t->Ip = FUNC6(p, "Ip");
	FUNC7(p, "Hostname", t->Hostname, sizeof(t->Hostname));
	t->Point = FUNC3(p, "Point");
	t->NumPort = FUNC2(p, "Ports");
	t->Ports = FUNC11(sizeof(UINT) * t->NumPort);
	for (i = 0;i < t->NumPort;i++)
	{
		t->Ports[i] = FUNC5(p, "Ports", i);
	}
	t->ServerCert = FUNC9(p, "ServerCert");
	t->NumFarmHub = FUNC2(p, "HubName");
	t->FarmHubs = FUNC11(sizeof(RPC_FARM_HUB) * t->NumFarmHub);
	for (i = 0;i < t->NumFarmHub;i++)
	{
		FUNC8(p, "HubName", t->FarmHubs[i].HubName, sizeof(t->FarmHubs[i].HubName), i);
		t->FarmHubs[i].DynamicHub = FUNC1(p, "DynamicHub", i);
	}
	t->NumSessions = FUNC3(p, "NumSessions");
	t->NumTcpConnections = FUNC3(p, "NumTcpConnections");
	t->Weight = FUNC3(p, "Weight");
}