#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT ;
struct TYPE_24__ {TYPE_4__* TcpSock; TYPE_3__* BulkRecvKey; TYPE_2__* BulkSendKey; int /*<<< orphan*/  YourPort; int /*<<< orphan*/  YourIp; int /*<<< orphan*/  MyPort; scalar_t__ DisconnectFlag; } ;
struct TYPE_23__ {int DoNotSetTargetConnectedSock; int /*<<< orphan*/  Lock; int /*<<< orphan*/  TargetConnectedEvent; int /*<<< orphan*/  SockEvent; TYPE_4__* TargetConnectedSock; TYPE_1__* UdpSock; int /*<<< orphan*/  NewSockConnectEvent; int /*<<< orphan*/  NewSockQueue; scalar_t__ ServerMode; } ;
struct TYPE_22__ {int IpClientAdded; int IsRUDPSocket; TYPE_5__* R_UDP_Stack; void* RUDP_OptimizedMss; TYPE_3__* BulkRecvKey; TYPE_2__* BulkSendKey; int /*<<< orphan*/  RemoteIP; int /*<<< orphan*/  RemotePort; int /*<<< orphan*/  LocalPort; int /*<<< orphan*/  LocalIP; } ;
struct TYPE_21__ {int /*<<< orphan*/  Ref; } ;
struct TYPE_20__ {int /*<<< orphan*/  Ref; } ;
struct TYPE_19__ {int /*<<< orphan*/  LocalIP; } ;
typedef  TYPE_4__ SOCK ;
typedef  TYPE_5__ RUDP_STACK ;
typedef  TYPE_6__ RUDP_SESSION ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__**,TYPE_4__**) ; 
 void* FUNC9 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(RUDP_STACK *r, RUDP_SESSION *se)
{
	SOCK *s1, *s2;
	UINT mss;
	// Validate arguments
	if (r == NULL || se == NULL || se->DisconnectFlag)
	{
		return;
	}

	if (se->TcpSock != NULL)
	{
		// It has already been created
		return;
	}

	// Creating a TCP socket pair
	if (FUNC8(&s1, &s2) == false)
	{
		// Failed to create. Disconnect the session
		FUNC10(r, se, false);
		return;
	}

	// Calculate the optimal MSS
	mss = FUNC9(r, se);

	if (r->ServerMode)
	{
		// Server mode
		se->TcpSock = s2;

		FUNC6(s2, r->SockEvent);

		// Update the end point information of the socket s1
		FUNC14(&s1->LocalIP);
		s1->LocalPort = se->MyPort;
		FUNC2(&s1->RemoteIP, &se->YourIp, sizeof(IP));
		s1->RemotePort = se->YourPort;
		if (FUNC5(&s1->RemoteIP) == false)
		{
			FUNC0(&s1->RemoteIP);
			s1->IpClientAdded = true;
		}
		s1->IsRUDPSocket = true;

		s1->BulkSendKey = se->BulkSendKey;
		s1->BulkRecvKey = se->BulkRecvKey;

		FUNC1(s1->BulkSendKey->Ref);
		FUNC1(s1->BulkRecvKey->Ref);

		s1->RUDP_OptimizedMss = mss;

		// Enqueue the newly created socket, and set the event
		FUNC4(r->NewSockQueue, s1);
		FUNC12(r->NewSockConnectEvent);
	}
	else
	{
		// Client mode
		FUNC7(r->Lock);
		{
			if (r->TargetConnectedSock == NULL && r->DoNotSetTargetConnectedSock == false)
			{
				// Update the end point information of the socket s2
				FUNC2(&s2->LocalIP, &r->UdpSock->LocalIP, sizeof(IP));
				s2->LocalPort = se->MyPort;
				FUNC2(&s2->RemoteIP, &se->YourIp, sizeof(IP));
				s2->RemotePort = se->YourPort;
				if (FUNC5(&s2->RemoteIP) == false)
				{
					FUNC0(&s2->RemoteIP);
					s2->IpClientAdded = true;
				}
				s2->IsRUDPSocket = true;

				s2->BulkSendKey = se->BulkSendKey;
				s2->BulkRecvKey = se->BulkRecvKey;

				FUNC1(s2->BulkSendKey->Ref);
				FUNC1(s2->BulkRecvKey->Ref);

				s2->RUDP_OptimizedMss = mss;

				// Register the socket to the RUDP stack
				r->TargetConnectedSock = s2;
				s2->R_UDP_Stack = r;
				se->TcpSock = s1;

				FUNC6(s1, r->SockEvent);

				// Set the event to be set when the connection is successful
				FUNC12(r->TargetConnectedEvent);
			}
			else
			{
				FUNC3(s1);
				FUNC3(s2);
				FUNC11(s1);
				FUNC11(s2);
			}
		}
		FUNC13(r->Lock);
	}
}