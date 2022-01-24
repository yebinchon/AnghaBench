#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {TYPE_1__* PacketData; } ;
struct TYPE_7__ {int /*<<< orphan*/  LoggingRecordCount; struct TYPE_7__* Client_Message; int /*<<< orphan*/ * CancelList; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/ * OldTraffic; int /*<<< orphan*/  DeviceName; struct TYPE_7__* ClientOption; scalar_t__* NicDownOnDisconnect; scalar_t__ PacketAdapter; struct TYPE_7__* Username; scalar_t__ Connection; struct TYPE_7__* Policy; scalar_t__ Cancel2; scalar_t__ Cancel1; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  lock; int /*<<< orphan*/ * Thread; struct TYPE_7__* Name; int /*<<< orphan*/ * Traffic; struct TYPE_7__* ClientAuth; int /*<<< orphan*/  ClientK; int /*<<< orphan*/ * ClientX; int /*<<< orphan*/ * DelayedPacketList; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ PKT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

void FUNC17(SESSION *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	// Release the delayed packet list
	if (s->DelayedPacketList != NULL)
	{
		UINT i;
		for (i = 0;i < FUNC9(s->DelayedPacketList);i++)
		{
			PKT *p = FUNC8(s->DelayedPacketList, i);

			FUNC2(p->PacketData);
			FUNC4(p);
		}

		FUNC14(s->DelayedPacketList);
	}

	// Release the client connection options
	if (s->ClientOption != NULL)
	{
		FUNC2(s->ClientOption);
	}

	// Release the client authentication data
	if (s->ClientAuth != NULL)
	{
		if (s->ClientAuth->ClientX != NULL)
		{
			FUNC7(s->ClientAuth->ClientX);
		}
		if (s->ClientAuth->ClientX != NULL)
		{
			FUNC3(s->ClientAuth->ClientK);
		}
		FUNC2(s->ClientAuth);
	}

	FUNC6(s->Traffic);
	FUNC2(s->Name);

	if (s->Thread != NULL)
	{
		FUNC15(s->Thread);
	}

	FUNC1(s->lock);

	FUNC13(s->HaltEvent);

	if (s->Cancel1)
	{
		FUNC10(s->Cancel1);
	}

	if (s->Cancel2)
	{
		FUNC10(s->Cancel2);
	}

	if (s->Policy)
	{
		FUNC2(s->Policy);
	}

	if (s->Connection)
	{
		FUNC12(s->Connection);
	}

	FUNC2(s->Username);

	if (s->PacketAdapter)
	{
		FUNC5(s->PacketAdapter);
	}

#ifdef OS_UNIX
	if (s->NicDownOnDisconnect != NULL && *s->NicDownOnDisconnect)
	{
		UnixVLanSetState(s->ClientOption->DeviceName, false);
	}
#endif

	if (s->OldTraffic != NULL)
	{
		FUNC6(s->OldTraffic);
	}

	FUNC1(s->TrafficLock);

	if (s->CancelList != NULL)
	{
		FUNC11(s->CancelList);
	}

	if (s->Client_Message != NULL)
	{
		FUNC2(s->Client_Message);
	}

	FUNC0(s->LoggingRecordCount);

	FUNC2(s);
}