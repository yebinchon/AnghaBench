#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {scalar_t__* Ports; int /*<<< orphan*/  HubList; int /*<<< orphan*/  TaskPostEvent; int /*<<< orphan*/  TaskQueue; scalar_t__ Point; scalar_t__ MaxSessions; scalar_t__ Weight; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  hostname; scalar_t__ NumPort; scalar_t__ Ip; int /*<<< orphan*/  Cedar; } ;
struct TYPE_18__ {int /*<<< orphan*/  Cedar; int /*<<< orphan*/  FarmMemberList; } ;
struct TYPE_17__ {int /*<<< orphan*/  RemoteIP; } ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_3__ HUB_LIST ;
typedef  TYPE_3__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  CompareHubList ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FARM_DEFAULT_WEIGHT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVER_CONTROL_TCP_TIMEOUT ; 
 scalar_t__ SERVER_MAX_SESSIONS ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC24 (int) ; 

void FUNC25(SERVER *server, SOCK *sock, X *cert, UINT ip, UINT num_port, UINT *ports, char *hostname, UINT point, UINT weight, UINT max_sessions)
{
	PACK *p;
	FARM_MEMBER *f;
	UINT i;
	char tmp[MAX_SIZE];
	// Validate arguments
	if (server == NULL || sock == NULL || cert == NULL || num_port == 0 || ports == NULL || hostname == NULL)
	{
		return;
	}

	if (weight == 0)
	{
		weight = FARM_DEFAULT_WEIGHT;
	}

	if (max_sessions == 0)
	{
		max_sessions = SERVER_MAX_SESSIONS;
	}

	if (ip == 0)
	{
		// If the public IP address is not specified, specify the connection
		// source IP address of this farm member server
		ip = FUNC7(&sock->RemoteIP);
	}

	FUNC6(tmp, sizeof(tmp), ip);
	FUNC18(server->Cedar, "LS_FARM_SERV_START", tmp, hostname);

	// Inform the success
	p = FUNC13();
	FUNC5(sock, p);
	FUNC4(p);

	FUNC6(tmp, sizeof(tmp), ip);
	FUNC1("Farm Member %s Connected. IP: %s\n", hostname, tmp);

	FUNC19(sock, SERVER_CONTROL_TCP_TIMEOUT);

	f = FUNC24(sizeof(FARM_MEMBER));
	f->Cedar = server->Cedar;
	f->Ip = ip;
	f->NumPort = num_port;
	f->Ports = ports;
	FUNC21(f->hostname, sizeof(f->hostname), hostname);
	f->ServerCert = cert;
	f->ConnectedTime = FUNC22();
	f->Weight = weight;
	f->MaxSessions = max_sessions;

	f->HubList = FUNC12(CompareHubList);
	f->Point = point;

	f->TaskQueue = FUNC14();
	f->TaskPostEvent = FUNC11();

	// Add to the list
	FUNC10(server->FarmMemberList);
	{
		FUNC0(server->FarmMemberList, f);
	}
	FUNC23(server->FarmMemberList);

	// Main process
	FUNC20(server, sock, f);

	// Remove from the list
	FUNC10(server->FarmMemberList);
	{
		FUNC2(server->FarmMemberList, f);
	}
	FUNC23(server->FarmMemberList);

	FUNC17(f->TaskQueue);
	FUNC15(f->TaskPostEvent);

	for (i = 0;i < FUNC9(f->HubList);i++)
	{
		HUB_LIST *hh = FUNC8(f->HubList, i);
		FUNC3(hh);
	}

	FUNC16(f->HubList);

	FUNC3(f);

	FUNC18(server->Cedar, "LS_FARM_SERV_END", hostname);
}