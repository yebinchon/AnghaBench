#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  str ;
struct TYPE_17__ {int NatDoCancelFlag; scalar_t__ Now; scalar_t__ NatTcpTimeout; scalar_t__ TmpBuf; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_21__ {int /*<<< orphan*/  size; int /*<<< orphan*/  pos; scalar_t__ p; } ;
struct TYPE_20__ {int /*<<< orphan*/  RemoteHostname; } ;
struct TYPE_19__ {scalar_t__ size; } ;
struct TYPE_18__ {int TcpStatus; int TcpFinished; int SendAckNext; int TcpDisconnected; scalar_t__ TcpLastRecvAckTime; scalar_t__ LastCommTime; int /*<<< orphan*/  TcpSendWindowSize; TYPE_3__* SendFifo; TYPE_4__* Sock; int /*<<< orphan*/  test_TotalSent; int /*<<< orphan*/  DestPort; int /*<<< orphan*/  Id; int /*<<< orphan*/  DestIp; TYPE_7__* RecvFifo; int /*<<< orphan*/  TcpMakeConnectionSucceed; int /*<<< orphan*/ * NatTcpConnectThread; int /*<<< orphan*/  TcpMakeConnectionFailed; scalar_t__ DisconnectNow; } ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ NAT_SEND_BUF_SIZE ; 
#define  NAT_TCP_CONNECTED 131 
#define  NAT_TCP_CONNECTING 130 
#define  NAT_TCP_ESTABLISHED 129 
#define  NAT_TCP_SEND_RESET 128 
 int /*<<< orphan*/  NAT_TMPBUF_SIZE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_LATER ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ VIRTUAL_TCP_SEND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,void*,int /*<<< orphan*/ ) ; 

bool FUNC16(VH *v, NAT_ENTRY *n)
{
	char str[MAX_SIZE];
	bool timeouted = false;
	// Validate arguments
	if (v == NULL || n == NULL)
	{
		return false;
	}

	if (n->DisconnectNow)
	{
		goto DISCONNECT;
	}

	// Process by state of the TCP
	switch (n->TcpStatus)
	{
	case NAT_TCP_CONNECTING:		// Waiting for connection
		if (n->NatTcpConnectThread == NULL)
		{
			// Start a connection by creating a connection thread
			FUNC0(v, n);
		}
		else
		{
			// Wait for the result of the connection thread that has already started
			if (n->TcpMakeConnectionFailed || n->TcpMakeConnectionSucceed)
			{
				// Use the results because operation thread has already finished
				FUNC14(n->NatTcpConnectThread, INFINITE);
				FUNC10(n->NatTcpConnectThread);
				n->NatTcpConnectThread = NULL;

				if (n->TcpMakeConnectionSucceed)
				{
					// Connection is successful, and a Sock was created
					n->TcpStatus = NAT_TCP_CONNECTED;
					FUNC5(str, sizeof(str), n->DestIp);
					FUNC7(v, "LH_NAT_TCP_SUCCEED", n->Id, n->Sock->RemoteHostname, str, n->DestPort);
				}
				else
				{
					// Failed to connect
					n->TcpStatus = NAT_TCP_SEND_RESET;
					FUNC5(str, sizeof(str), n->DestIp);
					FUNC7(v, "LH_NAT_TCP_FAILED", n->Id, str, n->DestPort);
				}
				v->NatDoCancelFlag = true;
			}
		}
		break;

	case NAT_TCP_CONNECTED:			// TCP socket connection completed. Negotiating with the client host
		break;

	case NAT_TCP_SEND_RESET:		// TCP communication disconnection: Send a RST to the client host
		break;

	case NAT_TCP_ESTABLISHED:		// TCP connection established
		{
			UINT old_send_fifo_size = 0;

			// Transmit to the socket if there is data in the receive buffer
			while (n->RecvFifo->size > 0)
			{
				UINT sent_size = FUNC11(n->Sock, ((UCHAR *)n->RecvFifo->p) + n->RecvFifo->pos,
					n->RecvFifo->size, false);
				if (sent_size == 0)
				{
					// Communication has been disconnected
					n->TcpFinished = true;
					v->NatDoCancelFlag = true;
					break;
				}
				else if (sent_size == SOCK_LATER)
				{
					// Blocking
					break;
				}
				else
				{
					// Successful transmission
					FUNC8(n->RecvFifo, NULL, sent_size);
					n->SendAckNext = true;

					if (false)
					{
						IP ip;

						n->test_TotalSent += sent_size;

						FUNC13(&ip, n->DestIp);
						FUNC1("TCP %u: %r:%u %u\n", n->Id, &ip, n->DestPort, (UINT)n->test_TotalSent);
					}
				}
			}

			old_send_fifo_size = FUNC4(n->SendFifo);

			// Write to the transmission buffer by obtaining data from the socket
			while (true)
			{
				void *buf = (void *)v->TmpBuf;
				UINT want_to_recv_size = 0;
				UINT recv_size;
				// Calculate the size of wanting to receive
				if (n->SendFifo->size < NAT_SEND_BUF_SIZE)
				{
					// Still can receive
					want_to_recv_size = FUNC6(NAT_SEND_BUF_SIZE - n->SendFifo->size, NAT_TMPBUF_SIZE);
				}
				if (want_to_recv_size == 0)
				{
					FUNC12(n->Sock);
					break;
				}
				recv_size = FUNC9(n->Sock, buf, want_to_recv_size, false);
				if (recv_size == 0)
				{
					// Communication has been disconnected
					n->TcpFinished = true;
					v->NatDoCancelFlag = true;
					if (n->TcpDisconnected == false)
					{
						FUNC3(n->Sock);
						n->TcpDisconnected = true;
					}
					break;
				}
				else if (recv_size == SOCK_LATER)
				{
					// Blocking
					break;
				}
				else
				{
					// Successful reception
					FUNC15(n->SendFifo, buf, recv_size);
					v->NatDoCancelFlag = true;
				}
			}

			if (old_send_fifo_size == 0 && FUNC4(n->SendFifo) != 0)
			{
				// Reset the time data for timeout when the data is newly queued
				// in the empty transmission buffer in the transmission process
				n->TcpLastRecvAckTime = v->Now;
			}

			// Raise a transmission time-out if a certain period of time elapsed
			// after receiving the last ACK, and the transmission buffer is not
			// empty, and the reception window size of other party is not 0
			if ((n->TcpLastRecvAckTime + (UINT64)VIRTUAL_TCP_SEND_TIMEOUT) < v->Now)
			{
				if (FUNC4(n->SendFifo) != 0 && n->TcpSendWindowSize != 0)
				{
					timeouted = true;
				}
			}
		}
		break;

	}

	// Timeout Detection
	if ((n->LastCommTime + (UINT64)v->NatTcpTimeout) < v->Now || n->LastCommTime > v->Now)
	{
		timeouted = true;
	}

	if (timeouted)
	{
		// Time-out occurs, the session close
		n->TcpStatus = NAT_TCP_SEND_RESET;
		v->NatDoCancelFlag = true;
	}

	return true;

DISCONNECT:		// Disconnect and session disposal
	FUNC2(v, n);

	return false;
}