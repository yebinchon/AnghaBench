#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT ;
struct TYPE_12__ {int ServerMode; void* SendBlocks2; void* SendBlocks; void* ReceivedBlocks; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  ClientStr; void* ClientBuild; void* ClientVer; TYPE_4__* Session; void* ConnectingSocks; void* ConnectingThreads; int /*<<< orphan*/  CurrentNumConnection; void* LastCounterResetTick; int /*<<< orphan*/  Name; int /*<<< orphan*/  Status; TYPE_1__* Tcp; int /*<<< orphan*/  Protocol; TYPE_2__* Cedar; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; void* ConnectedTick; } ;
struct TYPE_11__ {int VirtualHost; int LinkModeClient; TYPE_3__* ClientOption; TYPE_2__* Cedar; } ;
struct TYPE_10__ {char* Hostname; int /*<<< orphan*/  Port; } ;
struct TYPE_9__ {void* Build; void* Version; int /*<<< orphan*/  ref; } ;
struct TYPE_8__ {void* TcpSockList; } ;
typedef  int /*<<< orphan*/  TCP ;
typedef  TYPE_4__ SESSION ;
typedef  TYPE_5__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* CEDAR_CLIENT_STR ; 
 char* CEDAR_ROUTER_STR ; 
 char* CEDAR_SERVER_LINK_STR ; 
 int /*<<< orphan*/  CONNECTION_STATUS_CONNECTING ; 
 int /*<<< orphan*/  CONNECTION_TCP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC9 () ; 
 void* FUNC10 (int) ; 

CONNECTION *FUNC11(SESSION *s, char *client_str, UINT client_ver, UINT client_build)
{
	CONNECTION *c;

	// Initialization of CONNECTION object
	c = FUNC10(sizeof(CONNECTION));
	c->ConnectedTick = FUNC9();
	c->lock = FUNC5();
	c->ref = FUNC7();
	c->Cedar = s->Cedar;
	FUNC0(c->Cedar->ref);
	c->Protocol = CONNECTION_TCP;
	c->Tcp = FUNC10(sizeof(TCP));
	c->Tcp->TcpSockList = FUNC4(NULL);
	c->ServerMode = false;
	c->Status = CONNECTION_STATUS_CONNECTING;
	c->Name = FUNC1("CLIENT_CONNECTION");
	c->Session = s;
	c->CurrentNumConnection = FUNC3();
	c->LastCounterResetTick = FUNC9();
	FUNC2(c->CurrentNumConnection);

	c->ConnectingThreads = FUNC4(NULL);
	c->ConnectingSocks = FUNC4(NULL);

	if (client_str == NULL)
	{
		c->ClientVer = s->Cedar->Version;
		c->ClientBuild = s->Cedar->Build;

		if (c->Session->VirtualHost == false)
		{
			if (c->Session->LinkModeClient == false)
			{
				FUNC8(c->ClientStr, sizeof(c->ClientStr), CEDAR_CLIENT_STR);
			}
			else
			{
				FUNC8(c->ClientStr, sizeof(c->ClientStr), CEDAR_SERVER_LINK_STR);
			}
		}
		else
		{
			FUNC8(c->ClientStr, sizeof(c->ClientStr), CEDAR_ROUTER_STR);
		}
	}
	else
	{
		c->ClientVer = client_ver;
		c->ClientBuild = client_build;
		FUNC8(c->ClientStr, sizeof(c->ClientStr), client_str);
	}

	// Server name and port number
	FUNC8(c->ServerName, sizeof(c->ServerName), s->ClientOption->Hostname);
	c->ServerPort = s->ClientOption->Port;

	// Create queues
	c->ReceivedBlocks = FUNC6();
	c->SendBlocks = FUNC6();
	c->SendBlocks2 = FUNC6();

	return c;
}