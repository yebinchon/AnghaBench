#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_25__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_24__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_23__ {scalar_t__ OpCode; TYPE_1__* Header; } ;
struct TYPE_22__ {int /*<<< orphan*/  Interrupt; TYPE_2__* Sock; } ;
struct TYPE_21__ {int /*<<< orphan*/ * SendTube; int /*<<< orphan*/ * RecvTube; } ;
struct TYPE_20__ {int /*<<< orphan*/  TransactionId; } ;
typedef  int /*<<< orphan*/  TUBE ;
typedef  int /*<<< orphan*/  PKT ;
typedef  TYPE_3__ IPC ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  DHCP_OPTION_LIST ;
typedef  TYPE_4__ DHCPV4_DATA ;
typedef  TYPE_5__ BUF ;
typedef  TYPE_6__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_6__* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int,scalar_t__) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ) ; 

DHCPV4_DATA *FUNC18(IPC *ipc, IP *dest_ip, UINT tran_id, DHCP_OPTION_LIST *opt, UINT expecting_code, UINT timeout, TUBE *discon_poll_tube)
{
	UINT resend_interval;
	UINT64 giveup_time;
	UINT64 next_send_time = 0;
	TUBE *tubes[3];
	UINT num_tubes = 0;
	// Validate arguments
	if (ipc == NULL || opt == NULL || (expecting_code != 0 && timeout == 0))
	{
		return NULL;
	}

	// Retransmission interval
	resend_interval = FUNC13(1, (timeout / 3) - 100);

	// Time-out time
	giveup_time = FUNC16() + (UINT64)timeout;

	FUNC0(ipc->Interrupt, giveup_time);

	tubes[num_tubes++] = ipc->Sock->RecvTube;
	tubes[num_tubes++] = ipc->Sock->SendTube;

	if (discon_poll_tube != NULL)
	{
		tubes[num_tubes++] = discon_poll_tube;
	}

	while (true)
	{
		UINT64 now = FUNC16();
		BUF *dhcp_packet;

		FUNC8(ipc);

		// Time-out inspection
		if ((expecting_code != 0) && (now >= giveup_time))
		{
			return NULL;
		}

		// Send by building a DHCP packet periodically
		if (next_send_time == 0 || next_send_time <= now)
		{
			dhcp_packet = FUNC7(ipc, dest_ip, tran_id, opt);
			if (dhcp_packet == NULL)
			{
				return NULL;
			}

			FUNC11(ipc, dhcp_packet->Buf, dhcp_packet->Size);

			FUNC3(dhcp_packet);

			if (expecting_code == 0)
			{
				return NULL;
			}

			next_send_time = now + (UINT64)resend_interval;

			FUNC0(ipc->Interrupt, next_send_time);
		}

		// Happy processing
		FUNC9(ipc);

		while (true)
		{
			// Receive a packet
			BLOCK *b = FUNC10(ipc);
			PKT *pkt;
			DHCPV4_DATA *dhcp;

			if (b == NULL)
			{
				break;
			}

			// Parse the packet
			pkt = FUNC15(b->Buf, b->Size);

			dhcp = FUNC14(pkt);

			if (dhcp != NULL)
			{
				if (FUNC1(dhcp->Header->TransactionId) == tran_id && dhcp->OpCode == expecting_code)
				{
					// Expected operation code and transaction ID are returned
					FUNC5(pkt);
					FUNC2(b);

					return dhcp;
				}

				FUNC4(dhcp);
			}

			FUNC5(pkt);

			FUNC2(b);
		}

		if (FUNC12(ipc->Sock->RecvTube) == false || FUNC12(ipc->Sock->SendTube) == false ||
			(discon_poll_tube != NULL && FUNC12(discon_poll_tube) == false))
		{
			// Session is disconnected
			return NULL;
		}

		// Keep the CPU waiting
		FUNC17(tubes, num_tubes, FUNC6(ipc->Interrupt));
	}

	return NULL;
}