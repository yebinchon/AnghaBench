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
struct TYPE_4__ {int /*<<< orphan*/  NdisBuffer; int /*<<< orphan*/  NdisPacket; int /*<<< orphan*/  PacketPool; int /*<<< orphan*/  Buf; int /*<<< orphan*/  BufferPool; } ;
typedef  TYPE_1__ PACKET_BUFFER ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NEO_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  NEO_PACKET_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  PROTOCOL_RESERVED_SIZE_IN_PACKET ; 

PACKET_BUFFER *FUNC8()
{
	PACKET_BUFFER *p;
	NDIS_STATUS ret;

	// Memory allocation
	p = FUNC7(sizeof(PACKET_BUFFER));
	// Memory allocation for packet
	p->Buf = FUNC6(NEO_MAX_PACKET_SIZE);
	// Allocate the buffer pool
	FUNC2(&ret, &p->BufferPool, 1);
	// Allocate the buffer
	FUNC1(&ret, &p->NdisBuffer, p->BufferPool, p->Buf, NEO_MAX_PACKET_SIZE);
	// Secure the packet pool
	FUNC4(&ret, &p->PacketPool, 1, PROTOCOL_RESERVED_SIZE_IN_PACKET);
	// Secure the packet
	FUNC3(&ret, &p->NdisPacket, p->PacketPool);
	FUNC0(p->NdisPacket, NEO_PACKET_HEADER_SIZE);
	// Attach the buffer to the packet
	FUNC5(p->NdisPacket, p->NdisBuffer);

	return p;
}