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
struct TYPE_5__ {size_t NumPort; size_t NumFarmHub; int /*<<< orphan*/  Weight; int /*<<< orphan*/  NumTcpConnections; int /*<<< orphan*/  NumSessions; TYPE_1__* FarmHubs; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/ * Ports; int /*<<< orphan*/  Point; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Ip; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Controller; int /*<<< orphan*/  Id; } ;
struct TYPE_4__ {int /*<<< orphan*/  DynamicHub; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_2__ RPC_FARM_INFO ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

void FUNC10(PACK *p, RPC_FARM_INFO *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "Id", t->Id);
	FUNC0(p, "Controller", t->Controller);
	FUNC7(p, "ConnectedTime", t->ConnectedTime);
	FUNC4(p, "Ip", t->Ip);
	FUNC5(p, "Hostname", t->Hostname);
	FUNC2(p, "Point", t->Point);
	for (i = 0;i < t->NumPort;i++)
	{
		FUNC3(p, "Ports", t->Ports[i], i, t->NumPort);
	}
	FUNC8(p, "ServerCert", t->ServerCert);

	FUNC9(p, "HubsList");
	for (i = 0;i < t->NumFarmHub;i++)
	{
		FUNC6(p, "HubName", t->FarmHubs[i].HubName, i, t->NumFarmHub);
		FUNC1(p, "DynamicHub", t->FarmHubs[i].DynamicHub, i, t->NumFarmHub);
	}
	FUNC9(p, NULL);

	FUNC2(p, "NumSessions", t->NumSessions);
	FUNC2(p, "NumTcpConnections", t->NumTcpConnections);
	FUNC2(p, "Weight", t->Weight);
}