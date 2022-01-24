#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int UINT64 ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UDP ;
struct TYPE_20__ {int /*<<< orphan*/  BufferQueue; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/ * s; } ;
struct TYPE_19__ {scalar_t__ Protocol; int ServerMode; TYPE_6__* Udp; TYPE_12__* Session; int /*<<< orphan*/  Cedar; TYPE_4__* FirstSock; TYPE_4__* TubeSock; scalar_t__ IsInProc; TYPE_3__* Tcp; } ;
struct TYPE_18__ {int /*<<< orphan*/  RemoteIP; int /*<<< orphan*/  ref; } ;
struct TYPE_17__ {int /*<<< orphan*/  TcpSockList; } ;
struct TYPE_16__ {scalar_t__ DisconnectTick; } ;
struct TYPE_15__ {int ConnectionDisconnectSpan; int /*<<< orphan*/  PortUDP; } ;
struct TYPE_14__ {TYPE_1__* ClientOption; } ;
typedef  TYPE_2__ TCPSOCK ;
typedef  TYPE_3__ TCP ;
typedef  TYPE_4__ SOCK ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_5__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_12__*) ; 
 scalar_t__ CONNECTION_TCP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC12 (int) ; 

void FUNC13(CONNECTION *c)
{
	SOCK *s;
	TCP *tcp;
	TCPSOCK *ts;
	IP ip;
	UINT port;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	tcp = c->Tcp;

	// Protocol
	if (c->Protocol == CONNECTION_TCP)
	{
		// TCP
		s = c->FirstSock;

		if (c->IsInProc)
		{
			FUNC1(s->ref);
			c->TubeSock = s;
		}

		ts = FUNC7(s);

		if (c->ServerMode == false)
		{
			if (c->Session->ClientOption->ConnectionDisconnectSpan != 0)
			{
				ts->DisconnectTick = FUNC10() + c->Session->ClientOption->ConnectionDisconnectSpan * (UINT64)1000;
			}
		}

		FUNC5(tcp->TcpSockList);
		{
			FUNC0(tcp->TcpSockList, ts);
		}
		FUNC11(tcp->TcpSockList);
		FUNC9(s);
		c->FirstSock = NULL;
	}
	else
	{
		// UDP
		s = c->FirstSock;
		FUNC3(&ip, &s->RemoteIP, sizeof(IP));
		// May disconnect TCP connection at this point
		c->FirstSock = NULL;
		FUNC4(s);
		FUNC9(s);

		// Initialization of UDP structure
		c->Udp = FUNC12(sizeof(UDP));

		if (c->ServerMode)
		{
			// Server mode
			// Add an UDP Entry
			FUNC2(c->Cedar, c->Session);
			c->Udp->s = NULL;
		}
		else
		{
			port = c->Session->ClientOption->PortUDP;
			// Client mode
			c->Udp->s = FUNC8(0);
			// Write the IP address and port number
			FUNC3(&c->Udp->ip, &ip, sizeof(IP));
			c->Udp->port = port;
		}

		// Queue
		c->Udp->BufferQueue = FUNC6();
	}
}