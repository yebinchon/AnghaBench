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
typedef  size_t UINT ;
struct TYPE_4__ {int /*<<< orphan*/  NdisPacket; } ;
struct TYPE_3__ {TYPE_2__** PacketBuffer; int /*<<< orphan*/ * PacketBufferArray; } ;

/* Variables and functions */
 size_t NEO_MAX_PACKET_EXCHANGE ; 
 TYPE_2__* FUNC0 () ; 
 TYPE_1__* ctx ; 

void FUNC1()
{
	UINT i;
	// Create a packet buffer
	for (i = 0;i < NEO_MAX_PACKET_EXCHANGE;i++)
	{
		ctx->PacketBuffer[i] = FUNC0();
		// Store in the array
		ctx->PacketBufferArray[i] = ctx->PacketBuffer[i]->NdisPacket;
	}
}