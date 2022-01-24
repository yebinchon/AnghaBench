#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  UserList; struct TYPE_9__* Msg; int /*<<< orphan*/  AdminOptionList; int /*<<< orphan*/  SecurityLogger; int /*<<< orphan*/  PacketLogger; int /*<<< orphan*/  RadiusOptionLock; int /*<<< orphan*/  TicketList; int /*<<< orphan*/  TrafficLock; struct TYPE_9__* SecureNATOption; struct TYPE_9__* Option; int /*<<< orphan*/  OldTraffic; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  SessionCounter; int /*<<< orphan*/  NumSessionsBridge; int /*<<< orphan*/  NumSessionsClient; int /*<<< orphan*/  NumSessions; int /*<<< orphan*/  LinkList; int /*<<< orphan*/  MonitorList; int /*<<< orphan*/  IpTable; int /*<<< orphan*/  MacHashTable; int /*<<< orphan*/  SessionList; struct TYPE_9__* Name; int /*<<< orphan*/  lock_online; int /*<<< orphan*/  lock; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  HubDb; int /*<<< orphan*/  RadiusSecret; struct TYPE_9__* RadiusServerName; scalar_t__ WatchDogStarted; } ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,TYPE_1__*) ; 

void FUNC17(HUB *h)
{
	UINT i;
	char name[MAX_SIZE];
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	FUNC16(name, sizeof(name), h->Name);

	if (h->WatchDogStarted)
	{
		FUNC15(h);
	}

	FUNC4(h);

	if (h->RadiusServerName != NULL)
	{
		FUNC3(h->RadiusServerName);
		FUNC5(h->RadiusSecret);
	}
	FUNC11(h);
	FUNC1(h->HubDb);
	FUNC12(h->Cedar);
	FUNC2(h->lock);
	FUNC2(h->lock_online);
	FUNC3(h->Name);
	FUNC14(h->SessionList);
	FUNC13(h->MacHashTable);
	FUNC14(h->IpTable);
	FUNC14(h->MonitorList);
	FUNC14(h->LinkList);
	FUNC0(h->NumSessions);
	FUNC0(h->NumSessionsClient);
	FUNC0(h->NumSessionsBridge);
	FUNC0(h->SessionCounter);
	FUNC7(h->Traffic);
	FUNC7(h->OldTraffic);
	FUNC3(h->Option);

	FUNC3(h->SecureNATOption);

	FUNC2(h->TrafficLock);

	for (i = 0;i < FUNC10(h->TicketList);i++)
	{
		FUNC3(FUNC9(h->TicketList, i));
	}

	FUNC14(h->TicketList);

	FUNC2(h->RadiusOptionLock);

	FUNC6(h->PacketLogger);
	FUNC6(h->SecurityLogger);

	for (i = 0;i < FUNC10(h->AdminOptionList);i++)
	{
		FUNC3(FUNC9(h->AdminOptionList, i));
	}
	FUNC14(h->AdminOptionList);

	if (h->Msg != NULL)
	{
		FUNC3(h->Msg);
	}

	FUNC8(h->UserList);

	FUNC3(h);
}