#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_55__   TYPE_9__ ;
typedef  struct TYPE_54__   TYPE_8__ ;
typedef  struct TYPE_53__   TYPE_7__ ;
typedef  struct TYPE_52__   TYPE_6__ ;
typedef  struct TYPE_51__   TYPE_5__ ;
typedef  struct TYPE_50__   TYPE_3__ ;
typedef  struct TYPE_49__   TYPE_39__ ;
typedef  struct TYPE_48__   TYPE_2__ ;
typedef  struct TYPE_47__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  error_data ;
typedef  scalar_t__ USHORT ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_55__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_54__ {scalar_t__* Buf; int Size; } ;
struct TYPE_53__ {int /*<<< orphan*/  Ns; int /*<<< orphan*/  TunnelId; int /*<<< orphan*/ * AvpList; } ;
struct TYPE_52__ {scalar_t__ NextSendTick; int /*<<< orphan*/  Buf; } ;
struct TYPE_51__ {int Halting; scalar_t__ Now; int HaltCompleted; int /*<<< orphan*/  ThreadList; int /*<<< orphan*/ * IkeServer; int /*<<< orphan*/  HaltCompletedEvent; int /*<<< orphan*/ * TunnelList; int /*<<< orphan*/  FlushList; scalar_t__ Halt; } ;
struct TYPE_50__ {scalar_t__ LastRecvTick; int Timedout; int TunnelId2; int Established; scalar_t__ LastHelloSent; int IsV3; int Disconnecting; int SessionId2; scalar_t__ DisconnectTimeout; int StateChanged; int /*<<< orphan*/  NextNs; int /*<<< orphan*/  TunnelId1; int /*<<< orphan*/ * SendQueue; int /*<<< orphan*/ * SessionList; scalar_t__ IsCiscoV3; scalar_t__ WantToDisconnect; int /*<<< orphan*/  SessionId1; TYPE_1__* TubeRecv; TYPE_39__* EtherIP; int /*<<< orphan*/  TubeSend; scalar_t__ HasThread; } ;
struct TYPE_49__ {int /*<<< orphan*/ * SendPacketList; } ;
struct TYPE_48__ {int /*<<< orphan*/  DataSize; int /*<<< orphan*/  Data; } ;
struct TYPE_47__ {scalar_t__ IntParam1; scalar_t__ IntParam2; } ;
typedef  TYPE_2__ TUBEDATA ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ L2TP_TUNNEL ;
typedef  TYPE_3__ L2TP_SESSION ;
typedef  TYPE_5__ L2TP_SERVER ;
typedef  TYPE_6__ L2TP_QUEUE ;
typedef  TYPE_7__ L2TP_PACKET ;
typedef  TYPE_8__ BUF ;
typedef  TYPE_9__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_39__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  L2TPV3_CISCO_AVP_SESSION_ID_LOCAL ; 
 int /*<<< orphan*/  L2TPV3_CISCO_AVP_TUNNEL_ID ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_ASSIGNED_SESSION ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_ASSIGNED_TUNNEL ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_PPP_DISCONNECT_CAUSE ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_RESULT_CODE ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_V3_TUNNEL_ID ; 
 int /*<<< orphan*/  L2TP_AVP_VENDOR_ID_CISCO ; 
 scalar_t__ L2TP_HELLO_INTERVAL ; 
 scalar_t__ L2TP_HELLO_SUPRESS_MAX_THRETHORD_NUM_SEND_QUEUE ; 
 int /*<<< orphan*/  L2TP_MESSAGE_TYPE_CDN ; 
 int /*<<< orphan*/  L2TP_MESSAGE_TYPE_HELLO ; 
 int /*<<< orphan*/  L2TP_MESSAGE_TYPE_STOPCCN ; 
 scalar_t__ L2TP_PACKET_RESEND_INTERVAL ; 
 scalar_t__ L2TP_TUNNEL_DISCONNECT_TIMEOUT ; 
 scalar_t__ L2TP_TUNNEL_TIMEOUT ; 
 void* FUNC21 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 TYPE_8__* FUNC25 () ; 
 TYPE_7__* FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_5__*,TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_5__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_5__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_2__* FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_8__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__*,int) ; 
 TYPE_6__* FUNC37 (int) ; 

void FUNC38(L2TP_SERVER *l2tp)
{
	UINT i, j;
	LIST *delete_tunnel_list = NULL;
	// Validate arguments
	if (l2tp == NULL)
	{
		return;
	}

	if (l2tp->Halt)
	{
		if (l2tp->Halting == false)
		{
			l2tp->Halting = true;

			// Disconnect all tunnels
			for (i = 0;i < FUNC22(l2tp->TunnelList);i++)
			{
				L2TP_TUNNEL *t = FUNC21(l2tp->TunnelList, i);

				FUNC6(t);
			}
		}
	}

	// Flush
	FUNC10(l2tp->FlushList);

	// Enumerate all tunnels
	for (i = 0;i < FUNC22(l2tp->TunnelList);i++)
	{
		L2TP_TUNNEL *t = FUNC21(l2tp->TunnelList, i);
		LIST *delete_session_list = NULL;

		if ((l2tp->Now >= (t->LastRecvTick + (UINT64)L2TP_TUNNEL_TIMEOUT)) && t->Timedout == false)
		{
			// Disconnect the tunnel forcibly if data can not be received for a certain period of time
			t->Timedout = true;

			FUNC2("L2TP Tunnel %u/%u Timed out.\n", t->TunnelId1, t->TunnelId2);
			FUNC6(t);
		}

		if (t->Established && (l2tp->Now >= (t->LastHelloSent + (UINT64)L2TP_HELLO_INTERVAL)))
		{
			if (FUNC22(t->SendQueue) <= L2TP_HELLO_SUPRESS_MAX_THRETHORD_NUM_SEND_QUEUE)
			{
				L2TP_PACKET *pp = FUNC26(L2TP_MESSAGE_TYPE_HELLO, t->IsV3);

				// Send a Hello message
				t->LastHelloSent = l2tp->Now;
				//Debug("L2TP Sending Hello %u/%u: tick=%I64u\n", t->TunnelId1, t->TunnelId2, l2tp->Now);

				FUNC29(l2tp, t, 0, pp);

				FUNC13(pp);

				FUNC19(l2tp, t->LastHelloSent + (UINT64)L2TP_HELLO_INTERVAL);
			}
		}

		// Enumerate all sessions
		for (j = 0;j < FUNC22(t->SessionList);j++)
		{
			L2TP_SESSION *s = FUNC21(t->SessionList, j);

			if (s->HasThread)
			{
				// Send packet data
				while (true)
				{
					TUBEDATA *d = FUNC34(s->TubeSend);

					if (d == NULL)
					{
						break;
					}

					FUNC31(l2tp, t, s, d->Data, d->DataSize);

					FUNC17(d);
				}

				if (FUNC18(s->TubeSend) == false)
				{
					// Disconnect the this session because the PPP thread ends
					FUNC5(t, s);
				}
			}

			if (s->IsV3)
			{
				if (s->EtherIP != NULL)
				{
					UINT k;

					FUNC20(l2tp, s);

					// Notify an interrupt to the EtherIP module
					FUNC9(s->EtherIP);

					// Send an EtherIP packet data
					for (k = 0;k < FUNC22(s->EtherIP->SendPacketList);k++)
					{
						BLOCK *b = FUNC21(s->EtherIP->SendPacketList, k);

						FUNC31(l2tp, t, s, b->Buf, b->Size);

						FUNC11(b);
					}

					FUNC4(s->EtherIP->SendPacketList);
				}
			}

			if (s->WantToDisconnect && s->Disconnecting == false)
			{
				// Disconnect the session
				UCHAR error_data[4];
				USHORT us;
				UINT ui;
				UINT ppp_error_1 = 0, ppp_error_2 = 0;

				// Send the session disconnection response
				L2TP_PACKET *pp = FUNC26(L2TP_MESSAGE_TYPE_CDN, s->IsV3);

				if (s->TubeRecv != NULL)
				{
					ppp_error_1 = s->TubeRecv->IntParam1;
					ppp_error_2 = s->TubeRecv->IntParam2;
				}

				// Assigned Session ID
				if (s->IsV3 == false)
				{
					us = FUNC7(s->SessionId2);
					FUNC0(pp->AvpList, FUNC24(L2TP_AVP_TYPE_ASSIGNED_SESSION, true, 0,
						&us, sizeof(USHORT)));
				}
				else
				{
					ui = FUNC7(s->SessionId2);
					FUNC0(pp->AvpList, FUNC24(L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, true, 0,
						&ui, sizeof(UINT)));

					if (t->IsCiscoV3)
					{
						FUNC0(pp->AvpList, FUNC24(L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, true, L2TP_AVP_VENDOR_ID_CISCO,
							&ui, sizeof(UINT)));
					}
				}

				// Result-Error Code
				FUNC36(error_data, sizeof(error_data));
				error_data[1] = 0x03;
				FUNC0(pp->AvpList, FUNC24(L2TP_AVP_TYPE_RESULT_CODE, true, 0,
					error_data, sizeof(error_data)));

				if (ppp_error_1 != 0)
				{
					// PPP Disconnect Cause Code AVP
					BUF *b = FUNC25();
					UCHAR uc;
					USHORT us;

					// Disconnect Code
					us = FUNC7(ppp_error_1);
					FUNC35(b, &us, sizeof(USHORT));

					// Control Protocol Number
					us = FUNC7(0xc021);
					FUNC35(b, &us, sizeof(USHORT));

					// Direction
					uc = (UCHAR)ppp_error_2;
					FUNC35(b, &uc, sizeof(UCHAR));

					FUNC0(pp->AvpList, FUNC24(L2TP_AVP_TYPE_PPP_DISCONNECT_CAUSE, false, 0,
						b->Buf, b->Size));

					FUNC12(b);
				}

				FUNC29(l2tp, t, s->SessionId1, pp);

				FUNC13(pp);

				// Disconnect the session
				FUNC2("L2TP Session %u/%u on Tunnel %u/%u Disconnected.\n", s->SessionId1, s->SessionId2,
					t->TunnelId1, t->TunnelId2);
				s->Disconnecting = true;
				s->Established = false;
				s->DisconnectTimeout = l2tp->Now + (UINT64)L2TP_TUNNEL_DISCONNECT_TIMEOUT;

				// Stop the thread
				FUNC33(l2tp, t, s);

				FUNC19(l2tp, s->DisconnectTimeout);
			}

			if (s->Disconnecting && ((l2tp->Now >= s->DisconnectTimeout) || FUNC22(t->SendQueue) == 0))
			{
				// Delete the session if synchronization between the client
				// and the server is complete or a time-out occurs
				if (delete_session_list == NULL)
				{
					delete_session_list = FUNC27(NULL);
				}

				FUNC0(delete_session_list, s);
			}
		}

		if (delete_session_list != NULL)
		{
			// Session deletion process
			for (j = 0;j < FUNC22(delete_session_list);j++)
			{
				L2TP_SESSION *s = FUNC21(delete_session_list, j);

				FUNC2("L2TP Session %u/%u on Tunnel %u/%u Cleaned up.\n", s->SessionId1, s->SessionId2,
					t->TunnelId1, t->TunnelId2);

				FUNC15(s);
				FUNC3(t->SessionList, s);
			}

			FUNC28(delete_session_list);
		}

		if (t->WantToDisconnect && t->Disconnecting == false)
		{
			// Disconnect the tunnel
			USHORT error_data[4];
			USHORT us;
			UINT ui;
			// Reply the tunnel disconnection response
			L2TP_PACKET *pp = FUNC26(L2TP_MESSAGE_TYPE_STOPCCN, t->IsV3);

			// Assigned Tunnel ID
			if (t->IsV3 == false)
			{
				us = FUNC7(t->TunnelId2);
				FUNC0(pp->AvpList, FUNC24(L2TP_AVP_TYPE_ASSIGNED_TUNNEL, true, 0,
					&us, sizeof(USHORT)));
			}
			else
			{
				ui = FUNC8(t->TunnelId2);
				FUNC0(pp->AvpList, FUNC24(L2TP_AVP_TYPE_V3_TUNNEL_ID, true, 0,
					&ui, sizeof(UINT)));

				if (t->IsCiscoV3)
				{
					FUNC0(pp->AvpList, FUNC24(L2TPV3_CISCO_AVP_TUNNEL_ID, true, L2TP_AVP_VENDOR_ID_CISCO,
						&ui, sizeof(UINT)));
				}
			}

			// Result-Error Code
			FUNC36(error_data, sizeof(error_data));
			error_data[1] = 0x06;
			FUNC0(pp->AvpList, FUNC24(L2TP_AVP_TYPE_RESULT_CODE, true, 0,
				error_data, sizeof(error_data)));

			FUNC29(l2tp, t, 0, pp);

			FUNC13(pp);

			FUNC2("L2TP Tunnel %u/%u is Disconnected.\n", t->TunnelId1, t->TunnelId2);
			t->Disconnecting = true;
			t->Established = false;
			t->DisconnectTimeout = l2tp->Now + (UINT64)L2TP_TUNNEL_DISCONNECT_TIMEOUT;
			FUNC19(l2tp, t->DisconnectTimeout);
		}

		if (t->Disconnecting && (((FUNC22(t->SendQueue) == 0) && FUNC22(t->SessionList) == 0) || (l2tp->Now >= t->DisconnectTimeout)))
		{
			// Delete the tunnel if there is no session in the tunnel when synchronization
			// between the client and the server has been completed or a time-out occurs
			if (delete_tunnel_list == NULL)
			{
				delete_tunnel_list = FUNC27(NULL);
			}

			FUNC0(delete_tunnel_list, t);
		}
	}

	if (delete_tunnel_list != NULL)
	{
		for (i = 0;i < FUNC22(delete_tunnel_list);i++)
		{
			L2TP_TUNNEL *t = FUNC21(delete_tunnel_list, i);

			FUNC2("L2TP Tunnel %u/%u Cleaned up.\n", t->TunnelId1, t->TunnelId2);

			FUNC16(t);
			FUNC3(l2tp->TunnelList, t);
		}

		FUNC28(delete_tunnel_list);
	}

	// Re-transmit packets
	for (i = 0;i < FUNC22(l2tp->TunnelList);i++)
	{
		L2TP_TUNNEL *t = FUNC21(l2tp->TunnelList, i);
		UINT j;

		if (FUNC22(t->SendQueue) >= 1)
		{
			// Packet to be transmitted exists one or more
			for (j = 0;j < FUNC22(t->SendQueue);j++)
			{
				L2TP_QUEUE *q = FUNC21(t->SendQueue, j);

				if (l2tp->Now >= q->NextSendTick)
				{
					q->NextSendTick = l2tp->Now + (UINT64)L2TP_PACKET_RESEND_INTERVAL;

					FUNC19(l2tp, q->NextSendTick);

					FUNC30(l2tp, t, q);
				}
			}
		}
		else
		{
			// There is no packet to be transmitted, but the state of the tunnel is changed
			if (t->StateChanged)
			{
				// Send a ZLB
				L2TP_QUEUE *q = FUNC37(sizeof(L2TP_QUEUE));
				L2TP_PACKET *pp = FUNC26(0, t->IsV3);

				pp->TunnelId = t->TunnelId1;
				pp->Ns = t->NextNs;
				q->Buf = FUNC1(pp, t);

				FUNC30(l2tp, t, q);

				FUNC14(q);
				FUNC13(pp);
			}
		}

		t->StateChanged = false;
	}

	if (l2tp->Halting)
	{
		if (FUNC22(l2tp->TunnelList) == 0)
		{
			// Stop all the L2TP tunnel completed
			if (l2tp->HaltCompleted == false)
			{
				l2tp->HaltCompleted = true;

				FUNC32(l2tp->HaltCompletedEvent);
			}
		}
	}

	// Maintenance the thread list
	if (l2tp->IkeServer == NULL)
	{
		FUNC23(l2tp->ThreadList);
		//Debug("l2tp->ThreadList: %u\n", LIST_NUM(l2tp->ThreadList));
	}
}