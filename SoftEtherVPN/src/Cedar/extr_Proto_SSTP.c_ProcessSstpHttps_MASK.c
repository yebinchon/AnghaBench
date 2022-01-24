#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_23__ {scalar_t__* Buf; scalar_t__ Size; scalar_t__ PriorityQoS; } ;
struct TYPE_22__ {int size; int pos; scalar_t__ p; } ;
struct TYPE_21__ {int /*<<< orphan*/  CipherName; int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  LocalPort; int /*<<< orphan*/  LocalIP; int /*<<< orphan*/  RemotePort; int /*<<< orphan*/  RemoteIP; } ;
struct TYPE_20__ {int EstablishedCount; int /*<<< orphan*/  Interrupt; int /*<<< orphan*/  SendQueue; scalar_t__ Disconnected; int /*<<< orphan*/  RecvQueue; } ;
typedef  TYPE_1__ SSTP_SERVER ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  TYPE_2__ SOCK ;
typedef  TYPE_3__ FIFO ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ MAX_BUFFERING_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__* FUNC8 (scalar_t__) ; 
 TYPE_4__* FUNC9 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 () ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_2__*,scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 scalar_t__ SELECT_TIME ; 
 scalar_t__ SOCK_LATER ; 
 scalar_t__ SSTP_VERSION_1 ; 
 scalar_t__ FUNC16 (TYPE_2__*,scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 () ; 

bool FUNC21(CEDAR *cedar, SOCK *s, SOCK_EVENT *se)
{
	UINT tmp_size = 65536;
	UCHAR *tmp_buf;
	FIFO *recv_fifo;
	FIFO *send_fifo;
	SSTP_SERVER *sstp;
	bool ret = false;
	// Validate arguments
	if (cedar == NULL || s == NULL || se == NULL)
	{
		return false;
	}

	tmp_buf = FUNC8(tmp_size);
	recv_fifo = FUNC10();
	send_fifo = FUNC10();

	sstp = FUNC11(cedar, &s->RemoteIP, s->RemotePort, &s->LocalIP, s->LocalPort, se,
		s->RemoteHostname, s->CipherName);

	while (true)
	{
		UINT r;
		bool is_disconnected = false;
		bool state_changed = false;

		// Receive data over SSL
		while (true)
		{
			r = FUNC14(s, tmp_buf, tmp_size, true);
			if (r == 0)
			{
				// SSL is disconnected
				is_disconnected = true;
				break;
			}
			else if (r == SOCK_LATER)
			{
				// Data is not received any more
				break;
			}
			else
			{
				// Queue the received data
				FUNC19(recv_fifo, tmp_buf, r);
				state_changed = true;
			}
		}

		while (recv_fifo->size >= 4)
		{
			UCHAR *first4;
			UINT read_size = 0;
			bool ok = false;
			// Read 4 bytes from the beginning of the receive queue
			first4 = ((UCHAR *)recv_fifo->p) + recv_fifo->pos;
			if (first4[0] == SSTP_VERSION_1)
			{
				USHORT len = FUNC12(first4 + 2) & 0xFFF;
				if (len >= 4)
				{
					ok = true;

					if (recv_fifo->size >= len)
					{
						UCHAR *data;
						BLOCK *b;

						read_size = len;
						data = FUNC8(read_size);

						FUNC13(recv_fifo, data, read_size);

						b = FUNC9(data, read_size, 0);

						FUNC6(sstp->RecvQueue, b);
					}
				}
			}

			if (read_size == 0)
			{
				break;
			}

			if (ok == false)
			{
				// Disconnect the connection since a bad packet received
				is_disconnected = true;
				break;
			}
		}

		// Process the timer interrupt
		FUNC17(sstp);

		if (sstp->Disconnected)
		{
			is_disconnected = true;
		}

		// Put the transmission data that SSTP module has generated into the transmission queue
		while (true)
		{
			BLOCK *b = FUNC4(sstp->SendQueue);

			if (b == NULL)
			{
				break;
			}

			// When transmit a data packet, If there are packets of more than about
			// 2.5 MB in the transmission queue of the TCP, discard without transmission
			if (b->PriorityQoS || (send_fifo->size <= MAX_BUFFERING_PACKET_SIZE))
			{
				FUNC19(send_fifo, b->Buf, b->Size);
			}

			FUNC2(b);
		}

		// Data is transmitted over SSL
		while (send_fifo->size != 0)
		{
			r = FUNC16(s, ((UCHAR *)send_fifo->p) + send_fifo->pos, send_fifo->size, true);
			if (r == 0)
			{
				// SSL is disconnected
				is_disconnected = true;
				break;
			}
			else if (r == SOCK_LATER)
			{
				// Can not send any more
				break;
			}
			else
			{
				// Advance the transmission queue by the amount of the transmitted
				FUNC13(send_fifo, NULL, r);
				state_changed = true;
			}
		}

		if (is_disconnected)
		{
			// Disconnected
			break;
		}

		// Wait for the next state change
		if (state_changed == false)
		{
			UINT select_time = SELECT_TIME;
			UINT r = FUNC5(sstp->Interrupt);
			FUNC18(se, FUNC7(r, select_time));
		}
	}

	if (sstp != NULL && sstp->EstablishedCount >= 1)
	{
		ret = true;
	}

	FUNC3(sstp);

	FUNC15(recv_fifo);
	FUNC15(send_fifo);
	FUNC1(tmp_buf);

	FUNC20();
	FUNC0(s);

	return ret;
}