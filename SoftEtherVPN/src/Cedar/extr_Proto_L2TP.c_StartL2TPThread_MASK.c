#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_12__ {int /*<<< orphan*/  CryptName; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  SockEvent; } ;
struct TYPE_11__ {int HasThread; int /*<<< orphan*/  TubeRecv; int /*<<< orphan*/  TubeSend; int /*<<< orphan*/  Thread; int /*<<< orphan*/  SessionId2; int /*<<< orphan*/  SessionId1; } ;
struct TYPE_10__ {int /*<<< orphan*/  HostName; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIp; int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientIp; int /*<<< orphan*/  VendorName; int /*<<< orphan*/  TunnelId2; int /*<<< orphan*/  TunnelId1; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  TYPE_2__ L2TP_SESSION ;
typedef  TYPE_3__ L2TP_SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2TP_IPC_CLIENT_NAME_NO_TAG ; 
 int /*<<< orphan*/  L2TP_IPC_CLIENT_NAME_TAG ; 
 int /*<<< orphan*/  L2TP_IPC_POSTFIX ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC8(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_SESSION *s)
{
	// Validate arguments
	if (l2tp == NULL || t == NULL || s == NULL)
	{
		return;
	}

	if (s->HasThread == false)
	{
		char tmp[MAX_SIZE];

		FUNC1("Thread Created for Session %u/%u on Tunnel %u/%u\n",
			s->SessionId1, s->SessionId2, t->TunnelId1, t->TunnelId2);

		s->HasThread = true;

		FUNC5(&s->TubeSend, &s->TubeRecv, 0);
		FUNC6(s->TubeSend, l2tp->SockEvent);

		if (FUNC3(t->VendorName) == false)
		{
			FUNC2(tmp, sizeof(tmp), L2TP_IPC_CLIENT_NAME_TAG, t->VendorName);
		}
		else
		{
			FUNC7(tmp, sizeof(tmp), L2TP_IPC_CLIENT_NAME_NO_TAG);
		}

		// Create a PPP thread
		s->Thread = FUNC4(l2tp->Cedar, &t->ClientIp, t->ClientPort, &t->ServerIp, t->ServerPort,
			s->TubeSend, s->TubeRecv, L2TP_IPC_POSTFIX, tmp, t->HostName, l2tp->CryptName,
			FUNC0(l2tp, t, s));
	}
}