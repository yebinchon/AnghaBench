#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UDPPACKET ;
struct TYPE_5__ {int Halt; int NoNatTRegister; size_t RandPortId; int /*<<< orphan*/  Lock; int /*<<< orphan*/ * TargetConnectedSock; int /*<<< orphan*/  NewSockConnectEvent; int /*<<< orphan*/  TargetConnectedEvent; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/ * UdpSock; int /*<<< orphan*/  Interrupt; int /*<<< orphan*/  SendPacketList; int /*<<< orphan*/  NewSockQueue; int /*<<< orphan*/  NatT_SourceIpList; int /*<<< orphan*/  SessionList; int /*<<< orphan*/ * Thread; int /*<<< orphan*/ * IpQueryThread; scalar_t__ ServerMode; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ RUDP_STACK ;
typedef  TYPE_1__ RUDP_SOURCE_IP ;
typedef  int /*<<< orphan*/  RUDP_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 void* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* rand_port_numbers ; 

void FUNC18(RUDP_STACK *r)
{
	UINT i;
	// Validate arguments
	if (r == NULL)
	{
		return;
	}

	r->Halt = true;
	FUNC15(r->HaltEvent);
	FUNC16(r->SockEvent);

	if (r->ServerMode && r->NoNatTRegister == false)
	{
		if (r->IpQueryThread != NULL)
		{
			FUNC17(r->IpQueryThread, INFINITE);
			FUNC14(r->IpQueryThread);
		}
	}

	FUNC17(r->Thread, INFINITE);
	FUNC14(r->Thread);

	for (i = 0;i < FUNC7(r->SessionList);i++)
	{
		RUDP_SESSION *se = FUNC6(r->SessionList, i);

		FUNC8(se);
	}

	FUNC10(r->SessionList);

	for (i = 0;i < FUNC7(r->SendPacketList);i++)
	{
		UDPPACKET *p = FUNC6(r->SendPacketList, i);

		FUNC4(p);
	}

	while (true)
	{
		SOCK *s = FUNC5(r->NewSockQueue);
		if (s == NULL)
		{
			break;
		}

		FUNC1(s);
		FUNC12(s);
	}

	for (i = 0;i < FUNC7(r->NatT_SourceIpList);i++)
	{
		RUDP_SOURCE_IP *sip = (RUDP_SOURCE_IP *)FUNC6(r->NatT_SourceIpList, i);

		FUNC2(sip);
	}

	FUNC10(r->NatT_SourceIpList);

	FUNC11(r->NewSockQueue);

	FUNC10(r->SendPacketList);

	FUNC3(r->Interrupt);

	FUNC1(r->UdpSock);
	FUNC12(r->UdpSock);
	FUNC13(r->SockEvent);
	FUNC9(r->HaltEvent);
	FUNC9(r->TargetConnectedEvent);

	FUNC9(r->NewSockConnectEvent);

	FUNC1(r->TargetConnectedSock);
	FUNC12(r->TargetConnectedSock);

	FUNC0(r->Lock);

	if (r->RandPortId != 0)
	{
		rand_port_numbers[r->RandPortId] = 0;
	}

	FUNC2(r);
}