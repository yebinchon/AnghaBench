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
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_24__ {TYPE_1__* Server; } ;
struct TYPE_23__ {TYPE_4__* impl; } ;
struct TYPE_22__ {int (* SupportedModes ) () ;int (* Init ) (void**,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int (* ProcessData ) (void*,TYPE_2__*,int /*<<< orphan*/ *) ;int (* IsOk ) (void*) ;scalar_t__ (* EstablishedSessions ) (void*) ;int /*<<< orphan*/  (* Free ) (void*) ;int /*<<< orphan*/  (* BufferLimit ) (void*,int) ;int /*<<< orphan*/  (* Name ) () ;} ;
struct TYPE_21__ {int /*<<< orphan*/  LocalPort; int /*<<< orphan*/  LocalIP; int /*<<< orphan*/  RemotePort; int /*<<< orphan*/  RemoteIP; } ;
struct TYPE_20__ {int /*<<< orphan*/  Data; } ;
struct TYPE_19__ {int DisableOpenVPNServer; } ;
typedef  TYPE_2__ TCP_RAW_DATA ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  TYPE_3__ SOCK ;
typedef  TYPE_4__ PROTO_IMPL ;
typedef  TYPE_5__ PROTO ;
typedef  int /*<<< orphan*/  INTERRUPT_MANAGER ;
typedef  int /*<<< orphan*/  FIFO ;
typedef  TYPE_6__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int MAX_BUFFERING_PACKET_SIZE ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ OPENVPN_NEW_SESSION_DEADLINE_TIMEOUT ; 
 int PROTO_MODE_TCP ; 
 int /*<<< orphan*/  PROTO_TCP_BUFFER_SIZE ; 
 TYPE_5__* FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const) ; 
 scalar_t__ FUNC16 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ const SOCK_LATER ; 
 scalar_t__ FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TIMEOUT_INFINITE ; 
 scalar_t__ const FUNC22 () ; 
 int /*<<< orphan*/  UDPLISTENER_WAIT_INTERVAL ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int FUNC26 () ; 
 int FUNC27 (void**,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int FUNC29 (void*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (void*,int) ; 
 int FUNC31 (void*) ; 
 scalar_t__ FUNC32 (void*) ; 
 int /*<<< orphan*/  FUNC33 (void*) ; 

bool FUNC34(CEDAR *cedar, SOCK *sock)
{
	void *impl_data;
	const PROTO_IMPL *impl;
	const PROTO *proto;

	UCHAR *buf;
	TCP_RAW_DATA *recv_raw_data;
	FIFO *send_fifo;
	INTERRUPT_MANAGER *im;
	SOCK_EVENT *se;

	const UINT64 giveup = FUNC22() + (UINT64)OPENVPN_NEW_SESSION_DEADLINE_TIMEOUT;

	if (cedar == NULL || sock == NULL)
	{
		return false;
	}

	proto = FUNC14(sock);

	if (proto == NULL)
	{
		FUNC0("ProtoHandleConnection(): unrecognized protocol\n");
		return false;
	}

	impl = proto->impl;

	if (FUNC21(impl->Name(), "OpenVPN") == 0 && cedar->Server->DisableOpenVPNServer == true)
	{
		FUNC0("ProtoHandleConnection(): OpenVPN detected, but it's disabled\n");
		return false;
	}

	if ((impl->SupportedModes() & PROTO_MODE_TCP) == false)
	{
		return false;
	}

	im = FUNC11();
	se = FUNC12();

	if (impl->Init != NULL && impl->Init(&impl_data, cedar, im, se) == false)
	{
		FUNC0("ProtoHandleConnection(): failed to initialize %s\n", impl->Name());
		FUNC4(im);
		FUNC18(se);
		return false;
	}

	FUNC20(sock, TIMEOUT_INFINITE);
	FUNC7(sock, se);

	recv_raw_data = FUNC13(&sock->RemoteIP, sock->RemotePort, &sock->LocalIP, sock->LocalPort);
	send_fifo = FUNC10();

	buf = FUNC9(PROTO_TCP_BUFFER_SIZE);

	FUNC0("ProtoHandleConnection(): entering main loop\n");

	// Receive data from the TCP socket
	while (true)
	{
		UINT next_interval;
		bool stop = false;

		while (true)
		{
			const UINT ret = FUNC16(sock, buf, PROTO_TCP_BUFFER_SIZE, false);

			if (ret == SOCK_LATER)
			{
				// No more data to read
				break;
			}
			else if (ret == 0)
			{
				// Disconnected
				stop = true;
				break;
			}
			else
			{
				// Write the received data into the FIFO
				FUNC24(recv_raw_data->Data, buf, ret);
			}
		}

		if (impl->ProcessData(impl_data, recv_raw_data, send_fifo) == false)
		{
			stop = true;
		}

		// Send data to the TCP socket
		while (FUNC2(send_fifo) >= 1)
		{
			const UINT ret = FUNC19(sock, FUNC1(send_fifo), FUNC2(send_fifo), false);

			if (ret == SOCK_LATER)
			{
				// Can not write anymore
				break;
			}
			else if (ret == 0)
			{
				// Disconnected
				stop = true;
				break;
			}
			else
			{
				// Remove data that has been sent from the FIFO
				FUNC15(send_fifo, NULL, ret);
			}
		}

		impl->BufferLimit(impl_data, FUNC2(send_fifo) > MAX_BUFFERING_PACKET_SIZE);

		if (impl->IsOk(impl_data) == false)
		{
			if (impl->EstablishedSessions(impl_data) == 0)
			{
				if (FUNC22() >= giveup)
				{
					FUNC0("ProtoHandleConnection(): I waited too much for the session to start, I give up!\n");
					stop = true;
				}
			}
			else
			{
				FUNC0("ProtoHandleConnection(): implementation not OK, stopping the server\n");
				stop = true;
			}
		}

		if (stop)
		{
			// Error or disconnection occurs
			FUNC0("ProtoHandleConnection(): breaking main loop\n");
			break;
		}

		// Wait until the next event occurs
		next_interval = FUNC6(im);
		next_interval = FUNC8(next_interval, UDPLISTENER_WAIT_INTERVAL);
		FUNC23(se, next_interval);
	}

	impl->Free(impl_data);

	FUNC4(im);
	FUNC18(se);
	FUNC5(recv_raw_data);
	FUNC17(send_fifo);
	FUNC3(buf);

	return true;
}