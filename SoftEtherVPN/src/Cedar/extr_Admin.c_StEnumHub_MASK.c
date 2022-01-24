#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_25__ {int ServerAdmin; int /*<<< orphan*/  HubName; TYPE_2__* Server; } ;
struct TYPE_24__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_23__ {int Me; int /*<<< orphan*/  HubList; } ;
struct TYPE_22__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  LastCommTime; TYPE_1__* HubDb; int /*<<< orphan*/  IpTable; int /*<<< orphan*/  MacHashTable; int /*<<< orphan*/  SessionList; int /*<<< orphan*/  Type; scalar_t__ Offline; int /*<<< orphan*/  Name; int /*<<< orphan*/ * Option; } ;
struct TYPE_21__ {scalar_t__ NumSessions; scalar_t__ NumMacTables; scalar_t__ NumIpTables; int /*<<< orphan*/  Name; } ;
struct TYPE_20__ {scalar_t__ NumHub; TYPE_3__* Hubs; } ;
struct TYPE_19__ {int Online; int IsTrafficFilled; scalar_t__ NumSessions; int /*<<< orphan*/  NumMacTables; scalar_t__ NumIpTables; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  LastCommTime; scalar_t__ NumGroups; scalar_t__ NumUsers; int /*<<< orphan*/  HubType; } ;
struct TYPE_18__ {scalar_t__ ServerType; int /*<<< orphan*/  FarmMemberList; TYPE_8__* Cedar; } ;
struct TYPE_17__ {int /*<<< orphan*/  GroupList; int /*<<< orphan*/  UserList; } ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_ENUM_HUB_ITEM ;
typedef  TYPE_4__ RPC_ENUM_HUB ;
typedef  TYPE_5__ HUB_LIST ;
typedef  TYPE_6__ HUB ;
typedef  TYPE_7__ FARM_MEMBER ;
typedef  TYPE_8__ CEDAR ;
typedef  TYPE_9__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int) ; 
 TYPE_3__* FUNC16 (int) ; 

UINT FUNC17(ADMIN *a, RPC_ENUM_HUB *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;

	FUNC1(t);

	FUNC15(t, sizeof(RPC_ENUM_HUB));

	FUNC7(c);
	{
		UINT i, num, j;

		num = 0;

		for (i = 0;i < FUNC4(c->HubList);i++)
		{
			HUB *h = FUNC3(c->HubList, i);

			FUNC5(h->lock);

			if (a->ServerAdmin == false &&
				h->Option != NULL &&
				FUNC9(h->Name, a->HubName) != 0)
			{
				// This hub is not listed
			}
			else
			{
				// This hub is listed
				num++;
			}
		}

		t->NumHub = num;

		t->Hubs = FUNC16(sizeof(RPC_ENUM_HUB_ITEM) * num);

		i = 0;
		for (j = 0;j < FUNC4(c->HubList);j++)
		{
			HUB *h = FUNC3(c->HubList, j);

			if (a->ServerAdmin == false &&
				h->Option != NULL &&
				FUNC9(h->Name, a->HubName) != 0)
			{
				// This hub is not listed
			}
			else
			{
				// This hub is listed
				RPC_ENUM_HUB_ITEM *e = &t->Hubs[i++];

				FUNC10(e->HubName, sizeof(e->HubName), h->Name);
				e->Online = h->Offline ? false : true;
				e->HubType = h->Type;

				e->NumSessions = FUNC4(h->SessionList);

				FUNC6(h->MacHashTable);
				{
					e->NumMacTables = FUNC2(h->MacHashTable);
				}
				FUNC12(h->MacHashTable);

				FUNC8(h->IpTable);
				{
					e->NumIpTables = FUNC4(h->IpTable);
				}
				FUNC14(h->IpTable);

				if (h->HubDb != NULL)
				{
					FUNC8(h->HubDb->UserList);
					{
						e->NumUsers = FUNC4(h->HubDb->UserList);
					}
					FUNC14(h->HubDb->UserList);

					FUNC8(h->HubDb->GroupList);
					{
						e->NumGroups = FUNC4(h->HubDb->GroupList);
					}
					FUNC14(h->HubDb->GroupList);
				}

				e->LastCommTime = h->LastCommTime;
				e->LastLoginTime = h->LastLoginTime;
				e->NumLogin = h->NumLogin;
				e->CreatedTime = h->CreatedTime;

				FUNC5(h->TrafficLock);
				{
					FUNC0(&e->Traffic, h->Traffic, sizeof(TRAFFIC));
				}
				FUNC11(h->TrafficLock);

				e->IsTrafficFilled = true;
			}

			FUNC11(h->lock);
		}
	}
	FUNC13(c);

	if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		UINT i, j, k;
		FUNC8(s->FarmMemberList);
		{
			for (i = 0;i < FUNC4(s->FarmMemberList);i++)
			{
				FARM_MEMBER *f = FUNC3(s->FarmMemberList, i);

				FUNC8(f->HubList);
				{
					if (f->Me == false)
					{
						for (j = 0;j < FUNC4(f->HubList);j++)
						{
							HUB_LIST *o = FUNC3(f->HubList, j);

							for (k = 0;k < t->NumHub;k++)
							{
								RPC_ENUM_HUB_ITEM *e = &t->Hubs[k];

								if (FUNC9(e->HubName, o->Name) == 0)
								{
									e->NumIpTables += o->NumIpTables;
									e->NumMacTables += o->NumMacTables;
									e->NumSessions += o->NumSessions;
								}
							}
						}
					}
				}
				FUNC14(f->HubList);
			}
		}
		FUNC14(s->FarmMemberList);
	}

	return ERR_NO_ERROR;
}