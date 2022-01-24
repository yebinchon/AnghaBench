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
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  CurrentActiveLinks; int /*<<< orphan*/  FifoBudgetLock; int /*<<< orphan*/  QueueBudgetLock; int /*<<< orphan*/  CurrentTcpQueueSizeLock; int /*<<< orphan*/  CurrentRegionLock; int /*<<< orphan*/  OpenVPNPublicPortsLock; int /*<<< orphan*/  UdpPortList; int /*<<< orphan*/  AcceptingSockets; int /*<<< orphan*/  CedarSuperLock; int /*<<< orphan*/  AssignedClientLicense; int /*<<< orphan*/  AssignedBridgeLicense; struct TYPE_9__* BuildInfo; struct TYPE_9__* VerString; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; struct TYPE_9__* HttpAcceptEncoding; struct TYPE_9__* HttpAcceptLanguage; struct TYPE_9__* HttpAccept; struct TYPE_9__* HttpUserAgent; struct TYPE_9__* MachineName; struct TYPE_9__* ServerStr; int /*<<< orphan*/  TrafficDiffList; struct TYPE_9__* HubName; struct TYPE_9__* Name; struct TYPE_9__* CipherList; scalar_t__ ServerK; int /*<<< orphan*/ * ServerX; int /*<<< orphan*/ * DebugLog; int /*<<< orphan*/  CurrentSessions; int /*<<< orphan*/  ConnectionIncrement; int /*<<< orphan*/  lock; int /*<<< orphan*/  UDPEntryList; int /*<<< orphan*/  ConnectionList; int /*<<< orphan*/  HubList; int /*<<< orphan*/  ListenerList; int /*<<< orphan*/  CaList; int /*<<< orphan*/  WebUI; } ;
typedef  TYPE_1__ TRAFFIC_DIFF ;
typedef  TYPE_1__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(CEDAR *c)
{
	UINT i;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	FUNC15(c->WebUI);
	FUNC3(c);

/*
	for (i = 0;i < LIST_NUM(c->HubList);i++)
	{
		HUB *h = LIST_DATA(c->HubList, i);
	}
*/
	for (i = 0;i < FUNC12(c->CaList);i++)
	{
		X *x = FUNC11(c->CaList, i);
		FUNC10(x);
	}
	FUNC14(c->CaList);

	FUNC14(c->ListenerList);
	FUNC14(c->HubList);
	FUNC14(c->ConnectionList);
	//CleanupUDPEntry(c);
	FUNC14(c->UDPEntryList);
	FUNC1(c->lock);
	FUNC0(c->ConnectionIncrement);
	FUNC0(c->CurrentSessions);

	if (c->DebugLog != NULL)
	{
		FUNC6(c->DebugLog);
	}

	if (c->ServerX)
	{
		FUNC10(c->ServerX);
	}
	if (c->ServerK)
	{
		FUNC4(c->ServerK);
	}

	if (c->CipherList)
	{
		FUNC2(c->CipherList);
	}

	for (i = 0;i < FUNC12(c->TrafficDiffList);i++)
	{
		TRAFFIC_DIFF *d = FUNC11(c->TrafficDiffList, i);
		FUNC2(d->Name);
		FUNC2(d->HubName);
		FUNC2(d);
	}

	FUNC14(c->TrafficDiffList);

	FUNC2(c->ServerStr);
	FUNC2(c->MachineName);

	FUNC2(c->HttpUserAgent);
	FUNC2(c->HttpAccept);
	FUNC2(c->HttpAcceptLanguage);
	FUNC2(c->HttpAcceptEncoding);

	FUNC9(c->Traffic);

	FUNC1(c->TrafficLock);

	FUNC7(c);

	FUNC2(c->VerString);
	FUNC2(c->BuildInfo);

	FUNC5(c);

	FUNC0(c->AssignedBridgeLicense);
	FUNC0(c->AssignedClientLicense);

	FUNC8(c);

	FUNC1(c->CedarSuperLock);

	FUNC0(c->AcceptingSockets);

	FUNC13(c->UdpPortList);

	FUNC1(c->OpenVPNPublicPortsLock);

	FUNC1(c->CurrentRegionLock);

	FUNC1(c->CurrentTcpQueueSizeLock);
	FUNC1(c->QueueBudgetLock);
	FUNC1(c->FifoBudgetLock);

	FUNC0(c->CurrentActiveLinks);

	FUNC2(c);
}