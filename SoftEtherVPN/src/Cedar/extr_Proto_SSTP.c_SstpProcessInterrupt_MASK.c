#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
struct TYPE_15__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_14__ {scalar_t__ Now; int FlushRecvTube; scalar_t__ Status; int Disconnecting; int Aborting; scalar_t__ NextSendEchoRequestTick; scalar_t__ LastRecvTick; int Disconnected; int DisconnectSent; int AbortSent; scalar_t__ AbortReceived; scalar_t__ DisconnectRecved; int /*<<< orphan*/  TubeSend; int /*<<< orphan*/  TubeRecv; int /*<<< orphan*/  Interrupt; int /*<<< orphan*/  RecvQueue; } ;
struct TYPE_13__ {int /*<<< orphan*/  DataSize; int /*<<< orphan*/  Data; } ;
typedef  TYPE_1__ TUBEDATA ;
typedef  TYPE_2__ SSTP_SERVER ;
typedef  int /*<<< orphan*/  SSTP_PACKET ;
typedef  TYPE_3__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int SSTP_ECHO_SEND_INTERVAL_MAX ; 
 int SSTP_ECHO_SEND_INTERVAL_MIN ; 
 int /*<<< orphan*/  SSTP_MSG_CALL_ABORT ; 
 int /*<<< orphan*/  SSTP_MSG_CALL_DISCONNECT ; 
 int /*<<< orphan*/  SSTP_MSG_CALL_DISCONNECT_ACK ; 
 int /*<<< orphan*/  SSTP_MSG_ECHO_REQUEST ; 
 scalar_t__ SSTP_SERVER_STATUS_ESTABLISHED ; 
 scalar_t__ SSTP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ) ; 

void FUNC17(SSTP_SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	s->Now = FUNC14();

	s->FlushRecvTube = false;

	// Process the received packet
	while (true)
	{
		BLOCK *b = FUNC3(s->RecvQueue);
		SSTP_PACKET *p;

		if (b == NULL)
		{
			break;
		}

		p = FUNC11(b->Buf, b->Size);
		if (p == NULL)
		{
			// Disconnect the SSTP since a bad packet received
			FUNC6(s);
		}
		else
		{
			// Process the received packet
			FUNC12(s, p);

			FUNC8(p);
		}

		FUNC1(b);
	}

	if (s->FlushRecvTube)
	{
		FUNC15(s->TubeRecv);
	}

	// Transmit a packet that the PPP module is trying to send via the SSTP
	while (true)
	{
		TUBEDATA *d = FUNC16(s->TubeSend);
		SSTP_PACKET *p;
		if (d == NULL)
		{
			break;
		}

		p = FUNC10(d->Data, d->DataSize);

		FUNC13(s, p);

		FUNC8(p);

		FUNC2(d);
	}

	if (s->Status == SSTP_SERVER_STATUS_ESTABLISHED)
	{
		if (s->Disconnecting == false && s->Aborting == false)
		{
			// Periodic transmission of Echo Request
			if (s->NextSendEchoRequestTick == 0 || s->NextSendEchoRequestTick <= s->Now)
			{
				UINT64 next_interval = (UINT64)(SSTP_ECHO_SEND_INTERVAL_MIN + FUNC5() % (SSTP_ECHO_SEND_INTERVAL_MAX - SSTP_ECHO_SEND_INTERVAL_MIN));
				SSTP_PACKET *p;

				s->NextSendEchoRequestTick = s->Now + next_interval;
				FUNC0(s->Interrupt, s->NextSendEchoRequestTick);

				p = FUNC9(SSTP_MSG_ECHO_REQUEST);

				FUNC13(s, p);

				FUNC8(p);
			}
		}
	}

	if ((s->LastRecvTick + (UINT64)SSTP_TIMEOUT) <= s->Now)
	{
		// Disconnect the SSTP because a timeout occurred
		FUNC6(s);
		s->Disconnected = true;
	}

	if (FUNC4(s->TubeRecv) == false || FUNC4(s->TubeSend) == false)
	{
		// Disconnect the SSTP since the PPP module is disconnected
		FUNC7(s);
	}

	if (s->Disconnecting)
	{
		// Normal disconnection process
		if (s->DisconnectSent == false)
		{
			// Send a Disconnect
			SSTP_PACKET *ret = FUNC9(s->DisconnectRecved ? SSTP_MSG_CALL_DISCONNECT_ACK : SSTP_MSG_CALL_DISCONNECT);

			FUNC13(s, ret);

			FUNC8(ret);

			s->DisconnectSent = true;
		}
	}

	if (s->Aborting)
	{
		// Abnormal disconnection processing
		if (s->AbortSent == false)
		{
			// Send the Abort
			SSTP_PACKET *ret = FUNC9(SSTP_MSG_CALL_ABORT);

			FUNC13(s, ret);

			FUNC8(ret);

			s->AbortSent = true;
		}
	}

	if (s->DisconnectSent && s->DisconnectRecved)
	{
		// Disconnect after exchanging the Disconnect each other
		s->Disconnected = true;
	}

	if (s->AbortSent && s->AbortReceived)
	{
		// Disconnect after exchanging the Abort each other
		s->Disconnected = true;
	}
}