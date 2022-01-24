#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_27__ {int ServerAdmin; char* HubName; int /*<<< orphan*/ * LogFileList; TYPE_4__* Rpc; int /*<<< orphan*/  ClientWinVer; int /*<<< orphan*/  ClientBuild; TYPE_3__* Server; } ;
struct TYPE_26__ {TYPE_3__* Server; } ;
struct TYPE_25__ {int /*<<< orphan*/  Name; TYPE_6__* Cedar; int /*<<< orphan*/  ClientBuild; int /*<<< orphan*/  Random; TYPE_2__* FirstSock; } ;
struct TYPE_24__ {char* Name; } ;
struct TYPE_23__ {scalar_t__ ServerType; } ;
struct TYPE_21__ {int* addr; } ;
struct TYPE_22__ {TYPE_1__ RemoteIP; } ;
typedef  TYPE_2__ SOCK ;
typedef  TYPE_3__ SERVER ;
typedef  int /*<<< orphan*/  RPC_WINVER ;
typedef  TYPE_4__ RPC ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_5__ CONNECTION ;
typedef  TYPE_6__ CEDAR ;
typedef  TYPE_7__ ADMIN ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int*) ; 
 int /*<<< orphan*/  AdminDispatch ; 
 int FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_IP_ADDRESS_DENIED ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_NULL_PASSWORD_LOCAL_ONLY ; 
 scalar_t__ ERR_PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*) ; 
 scalar_t__ FUNC24 (char*) ; 
 TYPE_7__* FUNC25 (int) ; 

UINT FUNC26(CONNECTION *c, PACK *p)
{
	ADMIN *a;
	UCHAR secure_password[SHA1_SIZE];
	UCHAR null_password[SHA1_SIZE];
	UCHAR secure_null_password[SHA1_SIZE];
	char hubname[MAX_HUBNAME_LEN + 1];
	CEDAR *cedar;
	SOCK *sock;
	RPC *rpc;
	UINT err;
	SERVER *server = NULL;
	RPC_WINVER ver;
	bool accept_empty_password;
	bool is_empty_password = false;
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	cedar = c->Cedar;
	sock = c->FirstSock;

	if (cedar != NULL)
	{
		server = cedar->Server;
	}

	accept_empty_password = FUNC13(p, "accept_empty_password");

	// Get client OS version
	FUNC10(&ver, p);

	// Get hub name
	if (FUNC16(p, "hubname", hubname, sizeof(hubname)) == false)
	{
		// without hub name
		FUNC23(hubname, sizeof(hubname), "");
	}

	// Check source IP address
	if (FUNC1(sock, hubname) == false)
	{
		FUNC19(c->Cedar, "LA_IP_DENIED", c->Name);
		return ERR_IP_ADDRESS_DENIED;
	}

	// Get password information
	if (FUNC15(p, "secure_password") != SHA1_SIZE)
	{
		// Malformed information
		return ERR_PROTOCOL_ERROR;
	}
	FUNC14(p, "secure_password", secure_password);

	if (FUNC24(hubname) == 0)
	{
		// Server admin mode
		FUNC19(c->Cedar, "LA_CONNECTED_1", c->Name);
	}
	else
	{
		// Hub admin mode
		if (server != NULL && server->ServerType == SERVER_TYPE_FARM_MEMBER)
		{
			// Connection with hub admin mode to cluster member is not permitted
			return ERR_NOT_ENOUGH_RIGHT;
		}
		FUNC19(c->Cedar, "LA_CONNECTED_2", c->Name, hubname);
	}

	// Check password
	err = FUNC0(cedar, c->Random, secure_password,
		FUNC24(hubname) != 0 ? hubname : NULL, accept_empty_password, &is_empty_password);

	if (err != ERR_NO_ERROR)
	{
		// Error occured
		FUNC19(c->Cedar, "LA_ERROR", c->Name, FUNC7(err), err);
		return err;
	}

	FUNC19(c->Cedar, "LA_OK", c->Name);

	FUNC8(null_password, "");
	FUNC20(secure_null_password, null_password, c->Random);

	if (FUNC2(secure_null_password, secure_password, SHA1_SIZE) == 0)
	{
		if (sock->RemoteIP.addr[0] != 127)
		{
			// The client tried to use blank password for hub admin mode from remote
			if (FUNC24(hubname) != 0)
			{
				return ERR_NULL_PASSWORD_LOCAL_ONLY;
			}
		}
	}


	// Reply success result
	p = FUNC11();
	if (accept_empty_password && is_empty_password)
	{
		FUNC12(p, "empty_password", true);
	}
	FUNC9(sock, p);
	FUNC6(p);

	// Construct ADMIN object
	a = FUNC25(sizeof(ADMIN));
	a->ServerAdmin = ((FUNC24(hubname) == 0) ? true : false);
	a->HubName = (FUNC24(hubname) != 0 ? hubname : NULL);
	a->Server = c->Cedar->Server;
	a->ClientBuild = c->ClientBuild;

	FUNC3(&a->ClientWinVer, &ver, sizeof(RPC_WINVER));

	// Timeout setting
	FUNC21(sock, INFINITE);

	// RPC Server
	rpc = FUNC22(sock, AdminDispatch, a);

	a->Rpc = rpc;

	FUNC19(c->Cedar, "LA_RPC_START", c->Name, rpc->Name);

	FUNC18(rpc);
	FUNC17(rpc);

	if (a->LogFileList != NULL)
	{
		// Free cached log file list, if it exists
		FUNC5(a->LogFileList);
	}

	// Free ADMIN object
	FUNC4(a);

	return ERR_NO_ERROR;
}