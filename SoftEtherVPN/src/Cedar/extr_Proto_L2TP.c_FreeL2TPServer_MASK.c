#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UDPPACKET ;
struct TYPE_4__ {int /*<<< orphan*/  FlushList; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  HaltCompletedEvent; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  TunnelList; int /*<<< orphan*/  SendPacketList; int /*<<< orphan*/  ThreadList; } ;
typedef  int /*<<< orphan*/  L2TP_TUNNEL ;
typedef  TYPE_1__ L2TP_SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(L2TP_SERVER *l2tp)
{
	UINT i;
	// Validate arguments
	if (l2tp == NULL)
	{
		return;
	}

	FUNC2(l2tp->ThreadList);

	for (i = 0;i < FUNC6(l2tp->SendPacketList);i++)
	{
		UDPPACKET *p = FUNC5(l2tp->SendPacketList, i);

		FUNC4(p);
	}

	FUNC9(l2tp->SendPacketList);

	for (i = 0;i < FUNC6(l2tp->TunnelList);i++)
	{
		L2TP_TUNNEL *t = FUNC5(l2tp->TunnelList, i);

		FUNC1(t);
	}

	FUNC9(l2tp->TunnelList);

	FUNC10(l2tp->SockEvent);

	FUNC8(l2tp->HaltCompletedEvent);

	FUNC7(l2tp->Cedar);

	FUNC3(l2tp->FlushList);

	FUNC0(l2tp);
}