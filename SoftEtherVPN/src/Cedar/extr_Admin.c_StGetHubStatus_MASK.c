#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_19__ {TYPE_2__* Server; } ;
struct TYPE_18__ {int Me; int /*<<< orphan*/  HubList; } ;
struct TYPE_17__ {scalar_t__ Type; int /*<<< orphan*/  EnableSecureNAT; int /*<<< orphan*/  lock; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  IpTable; int /*<<< orphan*/  MacHashTable; TYPE_1__* HubDb; int /*<<< orphan*/  AccessList; int /*<<< orphan*/  NumSessionsBridge; int /*<<< orphan*/  NumSessionsClient; int /*<<< orphan*/  SessionList; scalar_t__ Offline; int /*<<< orphan*/  Name; } ;
struct TYPE_16__ {scalar_t__ NumIpTables; scalar_t__ NumMacTables; scalar_t__ NumSessionsBridge; scalar_t__ NumSessionsClient; scalar_t__ NumSessions; int /*<<< orphan*/  Name; } ;
struct TYPE_15__ {scalar_t__ HubType; int Online; int /*<<< orphan*/  SecureNATEnabled; scalar_t__ NumIpTables; int /*<<< orphan*/  NumMacTables; void* NumSessionsBridge; void* NumSessionsClient; scalar_t__ NumSessions; int /*<<< orphan*/  HubName; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  Traffic; scalar_t__ NumGroups; scalar_t__ NumUsers; scalar_t__ NumAccessLists; } ;
struct TYPE_14__ {scalar_t__ ServerType; int /*<<< orphan*/  FarmMemberList; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_13__ {int /*<<< orphan*/  GroupList; int /*<<< orphan*/  UserList; } ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_HUB_STATUS ;
typedef  TYPE_4__ HUB_LIST ;
typedef  TYPE_5__ HUB ;
typedef  TYPE_6__ FARM_MEMBER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_7__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_NO_ERROR ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 void* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 

UINT FUNC16(ADMIN *a, RPC_HUB_STATUS *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;

	CHECK_RIGHT;

	FUNC7(c);
	{
		h = FUNC2(c, t->HubName);
	}
	FUNC13(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC15(t, sizeof(RPC_HUB_STATUS));

	FUNC6(h->lock);
	{
		FUNC11(t->HubName, sizeof(t->HubName), h->Name);
		t->HubType = h->Type;
		t->Online = h->Offline ? false : true;
		t->NumSessions = FUNC5(h->SessionList);
		t->NumSessionsClient = FUNC1(h->NumSessionsClient);
		t->NumSessionsBridge = FUNC1(h->NumSessionsBridge);
		t->NumAccessLists = FUNC5(h->AccessList);

		if (h->HubDb != NULL)
		{
			t->NumUsers = FUNC5(h->HubDb->UserList);
			t->NumGroups = FUNC5(h->HubDb->GroupList);
		}

		t->NumMacTables = FUNC3(h->MacHashTable);
		t->NumIpTables = FUNC5(h->IpTable);

		FUNC6(h->TrafficLock);
		{
			FUNC0(&t->Traffic, h->Traffic, sizeof(TRAFFIC));
		}
		FUNC12(h->TrafficLock);

		t->NumLogin = h->NumLogin;
		t->LastCommTime = h->LastCommTime;
		t->LastLoginTime = h->LastLoginTime;
		t->CreatedTime = h->CreatedTime;
	}
	FUNC12(h->lock);

	if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		UINT i;
		FUNC8(s->FarmMemberList);
		{
			for (i = 0;i < FUNC5(s->FarmMemberList);i++)
			{
				UINT k;
				FARM_MEMBER *f = FUNC4(s->FarmMemberList, i);

				if (f->Me == false)
				{
					FUNC8(f->HubList);
					{
						for (k = 0;k < FUNC5(f->HubList);k++)
						{
							HUB_LIST *h = FUNC4(f->HubList, k);

							if (FUNC10(h->Name, t->HubName) == 0)
							{
								t->NumSessions += h->NumSessions;
								t->NumSessionsClient += h->NumSessionsClient;
								t->NumSessionsBridge += h->NumSessionsBridge;
								t->NumMacTables += h->NumMacTables;
								t->NumIpTables += h->NumIpTables;
							}
						}
					}
					FUNC14(f->HubList);
				}
			}
		}
		FUNC14(s->FarmMemberList);
	}

	if (h->Type != HUB_TYPE_FARM_STATIC)
	{
		t->SecureNATEnabled = h->EnableSecureNAT;
	}

	FUNC9(h);

	return ERR_NO_ERROR;
}