#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  NumPacketRecv; } ;
struct TYPE_7__ {scalar_t__ Halting; scalar_t__ Opened; int /*<<< orphan*/  PacketBufferArray; int /*<<< orphan*/  NdisMiniport; TYPE_1__ Status; TYPE_2__** PacketBuffer; } ;
struct TYPE_6__ {scalar_t__ Buf; int /*<<< orphan*/  NdisPacket; int /*<<< orphan*/  NdisBuffer; } ;
typedef  TYPE_2__ PACKET_BUFFER ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDIS_STATUS_RESOURCES ; 
 void* FUNC2 (void*,scalar_t__) ; 
 scalar_t__ NEO_MAX_PACKET_EXCHANGE ; 
 scalar_t__ NEO_MAX_PACKET_SIZE ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ NEO_PACKET_HEADER_SIZE ; 
 scalar_t__ FUNC4 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,void*,scalar_t__) ; 
 TYPE_3__* ctx ; 
 int g_is_win8 ; 

void FUNC10(void *buf)
{
	UINT num, i, size;
	void *packet_buf;
	// Validate arguments
	if (buf == NULL)
	{
		return;
	}

	// Number of packets
	num = FUNC3(buf);
	if (num > NEO_MAX_PACKET_EXCHANGE)
	{
		// Number of packets is too many
		return;
	}
	if (num == 0)
	{
		// No packet
		return;
	}

	if (ctx->Halting != FALSE)
	{
		// Halting
		return;
	}

	if (ctx->Opened == FALSE)
	{
		// Not connected
		return;
	}

	for (i = 0;i < num;i++)
	{
		PACKET_BUFFER *p = ctx->PacketBuffer[i];

		size = FUNC4(buf, i);
		if (size > NEO_MAX_PACKET_SIZE)
		{
			size = NEO_MAX_PACKET_SIZE;
		}
		if (size < NEO_PACKET_HEADER_SIZE)
		{
			size = NEO_PACKET_HEADER_SIZE;
		}

		packet_buf = FUNC2(buf, i);

		// Buffer copy
		FUNC9(p->Buf, packet_buf, size);

		if (g_is_win8 == false)
		{
			// Adjust the buffer size
			FUNC5(p->NdisBuffer, size);
			// Set the packet information
			FUNC1(p->NdisPacket, NDIS_STATUS_RESOURCES);
			FUNC0(p->NdisPacket, NEO_PACKET_HEADER_SIZE);
		}
		else
		{
			FUNC6(ctx->NdisMiniport, ctx, 
				p->Buf, NEO_PACKET_HEADER_SIZE,
				((UCHAR *)p->Buf) + NEO_PACKET_HEADER_SIZE, size - NEO_PACKET_HEADER_SIZE,
				size - NEO_PACKET_HEADER_SIZE);
			FUNC7(ctx->NdisMiniport);
		}
	}

	// Notify that packets have received
	ctx->Status.NumPacketRecv += num;

	if (g_is_win8 == false)
	{
		FUNC8(ctx->NdisMiniport, ctx->PacketBufferArray, num);
	}
}