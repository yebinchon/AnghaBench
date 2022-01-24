#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  NumPacketSend; int /*<<< orphan*/  NumPacketSendError; } ;
struct TYPE_4__ {int /*<<< orphan*/  Event; int /*<<< orphan*/  NdisMiniport; TYPE_1__ Status; } ;
typedef  scalar_t__ PNDIS_BUFFER ;
typedef  int /*<<< orphan*/  NDIS_PACKET ;
typedef  int /*<<< orphan*/  NDIS_HANDLE ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDIS_STATUS_FAILURE ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 scalar_t__ NEO_MAX_PACKET_SIZE ; 
 scalar_t__ NEO_MIN_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_2__* ctx ; 
 scalar_t__ g_is_win8 ; 

void FUNC14(NDIS_HANDLE MiniportAdapterContext,
						NDIS_PACKET **PacketArray,
						UINT NumberOfPackets)
{
	UCHAR *Buf,*BufCopy;
	PNDIS_BUFFER Buffer;
	UCHAR *Tmp;
	UINT PacketLength;
	UINT CurrentLength;
	UINT i;

	if (ctx == NULL)
	{
		return;
	}

	// Update the connection state
	FUNC5();

	if (NumberOfPackets == 0)
	{
		// The number of packets is 0
		return;
	}

	if (FUNC11(PacketArray, NumberOfPackets) == FALSE)
	{
		// Device is stopped
		return;
	}

	// Operation of the packet queue
	FUNC9();
	{
		if (FUNC11(PacketArray, NumberOfPackets) == FALSE)
		{
			// Device is stopped
			FUNC13();
			return;
		}

		// Place the packet in the queue in order
		for (i = 0;i < NumberOfPackets;i++)
		{
			// Get a packet
			FUNC4(PacketArray[i], NULL, NULL, &Buffer, &PacketLength);

			// Extract the packet.
			// Memory allocated here is used for the queue and is released at the time of releasing the queue.
			Buf = FUNC10(PacketLength);
			BufCopy = Buf;
			while (Buffer)
			{
				FUNC3(Buffer, &Tmp, &CurrentLength);
				if (CurrentLength == 0)
				{
					// Complete
					break;
				}
				FUNC6(BufCopy, Tmp, CurrentLength);
				BufCopy += CurrentLength;
				FUNC1(Buffer, &Buffer);
			}
			// Process this packet
			if (PacketLength > NEO_MIN_PACKET_SIZE)
			{
				if (PacketLength > NEO_MAX_PACKET_SIZE)
				{
					// Packet is too large
					FUNC0(PacketArray[i], NDIS_STATUS_FAILURE);

					if (g_is_win8)
					{
						FUNC2(ctx->NdisMiniport, PacketArray[i], NDIS_STATUS_FAILURE);
					}

					ctx->Status.NumPacketSendError++;
					FUNC7(Buf);
				}
				else
				{
					// Insert the packet into the queue
					FUNC8(Buf, PacketLength);
					FUNC0(PacketArray[i], NDIS_STATUS_SUCCESS);

					if (g_is_win8)
					{
						FUNC2(ctx->NdisMiniport, PacketArray[i], NDIS_STATUS_SUCCESS);
					}

					ctx->Status.NumPacketSend++;
				}
			}
			else
			{
				// Release if the packet doesn't contain data
				FUNC0(PacketArray[i], NDIS_STATUS_SUCCESS);

				if (g_is_win8)
				{
					FUNC2(ctx->NdisMiniport, PacketArray[i], NDIS_STATUS_SUCCESS);
				}

				FUNC7(Buf);
			}
		}
	}
	FUNC13();

	// Reception event
	FUNC12(ctx->Event);
}