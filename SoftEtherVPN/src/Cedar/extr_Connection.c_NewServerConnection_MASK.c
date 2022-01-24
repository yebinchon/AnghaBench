#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  Server; int /*<<< orphan*/  ServerStr; int /*<<< orphan*/  Build; int /*<<< orphan*/  Version; int /*<<< orphan*/  ref; } ;
struct TYPE_13__ {int ServerMode; int IsInProc; void* SendBlocks2; void* SendBlocks; void* ReceivedBlocks; int /*<<< orphan*/  ServerX; int /*<<< orphan*/  ServerStr; int /*<<< orphan*/  ServerBuild; int /*<<< orphan*/  ServerVer; int /*<<< orphan*/  CurrentNumConnection; TYPE_2__* Thread; int /*<<< orphan*/  Name; int /*<<< orphan*/  Status; TYPE_1__* Tcp; int /*<<< orphan*/  ClientHostname; int /*<<< orphan*/  ClientIp; TYPE_3__* FirstSock; int /*<<< orphan*/  Type; int /*<<< orphan*/  Protocol; TYPE_5__* Cedar; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; int /*<<< orphan*/  ConnectedTick; } ;
struct TYPE_12__ {scalar_t__ Type; int /*<<< orphan*/ * RemoteX; int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  RemoteIP; int /*<<< orphan*/  ref; } ;
struct TYPE_11__ {int /*<<< orphan*/  ref; } ;
struct TYPE_10__ {int /*<<< orphan*/  TcpSockList; } ;
typedef  TYPE_2__ THREAD ;
typedef  int /*<<< orphan*/  TCP ;
typedef  TYPE_3__ SOCK ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_4__ CONNECTION ;
typedef  TYPE_5__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONNECTION_STATUS_ACCEPTED ; 
 int /*<<< orphan*/  CONNECTION_TCP ; 
 int /*<<< orphan*/  CONNECTION_TYPE_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ SOCK_INPROC ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* FUNC13 (int) ; 

CONNECTION *FUNC14(CEDAR *cedar, SOCK *s, THREAD *t)
{
	CONNECTION *c;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	c = FUNC13(sizeof(CONNECTION));
	c->ConnectedTick = FUNC12();
	c->lock = FUNC8();
	c->ref = FUNC10();
	c->Cedar = cedar;
	FUNC0(c->Cedar->ref);
	c->Protocol = CONNECTION_TCP;
	c->Type = CONNECTION_TYPE_INIT;
	c->FirstSock = s;
	if (s != NULL)
	{
		FUNC0(c->FirstSock->ref);
		FUNC2(&c->ClientIp, &s->RemoteIP, sizeof(IP));
		FUNC11(c->ClientHostname, sizeof(c->ClientHostname), s->RemoteHostname);
	}
	c->Tcp = FUNC13(sizeof(TCP));
	c->Tcp->TcpSockList = FUNC7(NULL);
	c->ServerMode = true;
	c->Status = CONNECTION_STATUS_ACCEPTED;
	c->Name = FUNC3("INITING");
	c->Thread = t;
	FUNC0(t->ref);
	c->CurrentNumConnection = FUNC6();
	FUNC5(c->CurrentNumConnection);

	c->ServerVer = cedar->Version;
	c->ServerBuild = cedar->Build;
	FUNC11(c->ServerStr, sizeof(c->ServerStr), cedar->ServerStr);
	FUNC4(cedar->Server, c->ServerStr, sizeof(c->ServerStr));

	if (s != NULL && s->RemoteX != NULL)
	{
		c->ServerX = FUNC1(s->RemoteX);
	}

	if (s != NULL && s->Type == SOCK_INPROC)
	{
		// In-process socket
		c->IsInProc = true;
	}

	// Creating a Queue
	c->ReceivedBlocks = FUNC9();
	c->SendBlocks = FUNC9();
	c->SendBlocks2 = FUNC9();

	return c;
}