#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  TrafficDiffList; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  AssignedBridgeLicense; int /*<<< orphan*/  AssignedClientLicense; int /*<<< orphan*/  CurrentSessions; int /*<<< orphan*/  CurrentTcpConnections; int /*<<< orphan*/  HubList; } ;
struct TYPE_12__ {scalar_t__ Type; int /*<<< orphan*/  lock; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  IpTable; int /*<<< orphan*/  MacHashTable; int /*<<< orphan*/  NumSessionsBridge; int /*<<< orphan*/  NumSessionsClient; int /*<<< orphan*/  SessionList; int /*<<< orphan*/  NumSessions; TYPE_1__* Name; } ;
struct TYPE_11__ {int /*<<< orphan*/  MyRandomKey; TYPE_4__* Cedar; } ;
struct TYPE_10__ {scalar_t__ Type; struct TYPE_10__* Name; struct TYPE_10__* HubName; int /*<<< orphan*/  Traffic; } ;
typedef  TYPE_1__ TRAFFIC_DIFF ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_3__ HUB ;
typedef  TYPE_4__ CEDAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void FUNC19(SERVER *s, PACK *p, PACK *req)
{
	UINT i;
	CEDAR *c;
	// Validate arguments
	if (s == NULL || p == NULL || req == NULL)
	{
		return;
	}


	c = s->Cedar;

	FUNC8(c->HubList);
	{
		UINT num = FUNC6(c->HubList);
		for (i = 0;i < num;i++)
		{
			HUB *h = FUNC5(c->HubList, i);
			FUNC7(h->lock);
			{
				FUNC14(p, "HubName", h->Name, i, num);
				FUNC13(p, "HubType", h->Type, i, num);
				FUNC13(p, "NumSession", FUNC0(h->NumSessions), i, num);

				FUNC13(p, "NumSessions", FUNC6(h->SessionList), i, num);
				FUNC13(p, "NumSessionsClient", FUNC0(h->NumSessionsClient), i, num);
				FUNC13(p, "NumSessionsBridge", FUNC0(h->NumSessionsBridge), i, num);

				FUNC13(p, "NumMacTables", FUNC4(h->MacHashTable), i, num);

				FUNC13(p, "NumIpTables", FUNC6(h->IpTable), i, num);

				FUNC15(p, "LastCommTime", h->LastCommTime, i, num);
				FUNC15(p, "CreatedTime", h->CreatedTime, i, num);
			}
			FUNC17(h->lock);
		}
	}
	FUNC18(c->HubList);

	FUNC12(p, "Point", FUNC16(s));
	FUNC12(p, "NumTcpConnections", FUNC0(s->Cedar->CurrentTcpConnections));
	FUNC12(p, "NumTotalSessions", FUNC0(s->Cedar->CurrentSessions));
	FUNC12(p, "MaxSessions", FUNC3(s, "i_max_sessions"));

	FUNC12(p, "AssignedClientLicense", FUNC0(s->Cedar->AssignedClientLicense));
	FUNC12(p, "AssignedBridgeLicense", FUNC0(s->Cedar->AssignedBridgeLicense));

	FUNC11(p, "RandomKey", s->MyRandomKey, SHA1_SIZE);


	FUNC7(c->TrafficLock);
	{
		FUNC9(p, c->Traffic);
	}
	FUNC17(c->TrafficLock);

	FUNC8(c->TrafficDiffList);
	{
		UINT num = FUNC6(c->TrafficDiffList);
		UINT i;

		for (i = 0;i < num;i++)
		{
			TRAFFIC_DIFF *d = FUNC5(c->TrafficDiffList, i);

			FUNC13(p, "TdType", d->Type, i, num);
			FUNC14(p, "TdHubName", d->HubName, i, num);
			FUNC14(p, "TdName", d->Name, i, num);

			FUNC10(&d->Traffic, p, i, num);

			FUNC2(d->HubName);
			FUNC2(d->Name);
			FUNC2(d);
		}

		FUNC1(c->TrafficDiffList);
	}
	FUNC18(c->TrafficDiffList);
}