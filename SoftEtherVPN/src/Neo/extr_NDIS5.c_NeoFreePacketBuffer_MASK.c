#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  BufferPool; struct TYPE_4__* Buf; int /*<<< orphan*/  NdisBuffer; int /*<<< orphan*/  PacketPool; int /*<<< orphan*/  NdisPacket; } ;
typedef  TYPE_1__ PACKET_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(PACKET_BUFFER *p)
{
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	// Detach the buffer from the packet
	FUNC4(p->NdisPacket, &p->NdisBuffer);
	// Release the packet
	FUNC2(p->NdisPacket);
	// Release the packet pool
	FUNC3(p->PacketPool);
	// Release the buffer
	FUNC0(p->NdisBuffer);
	// Release the memory
	FUNC5(p->Buf);
	// Release the buffer pool
	FUNC1(p->BufferPool);
	// Release the memory
	FUNC5(p);
}