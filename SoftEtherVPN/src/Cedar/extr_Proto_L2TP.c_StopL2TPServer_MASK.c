#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int Halt; int /*<<< orphan*/  ThreadList; int /*<<< orphan*/  TunnelList; int /*<<< orphan*/  HaltCompletedEvent; int /*<<< orphan*/  SockEvent; } ;
struct TYPE_6__ {int /*<<< orphan*/  SessionList; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  int /*<<< orphan*/  L2TP_SESSION ;
typedef  TYPE_2__ L2TP_SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(L2TP_SERVER *l2tp, bool no_wait)
{
	// Validate arguments
	if (l2tp == NULL)
	{
		return;
	}
	if (l2tp->Halt)
	{
		return;
	}

	// Begin to shut down
	l2tp->Halt = true;
	FUNC0("Shutting down L2TP Server...\n");

	// Hit the event
	FUNC3(l2tp->SockEvent);

	if (no_wait == false)
	{
		// Wait until complete stopping all tunnels
		FUNC6(l2tp->HaltCompletedEvent, INFINITE);
	}
	else
	{
		UINT i, j;
		// Kill the thread of all sessions
		for (i = 0;i < FUNC2(l2tp->TunnelList);i++)
		{
			L2TP_TUNNEL *t = FUNC1(l2tp->TunnelList, i);

			for (j = 0;j < FUNC2(t->SessionList);j++)
			{
				L2TP_SESSION *s = FUNC1(t->SessionList, j);

				FUNC4(l2tp, t, s);
			}
		}
	}

	// Thread stop
	FUNC0("Stopping all L2TP PPP Threads...\n");
	FUNC5(l2tp->ThreadList);
	FUNC0("L2TP Server Shutdown Completed.\n");
}