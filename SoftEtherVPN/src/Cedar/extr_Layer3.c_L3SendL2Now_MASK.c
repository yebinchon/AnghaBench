#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  int UINT ;
typedef  void UCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  SendQueue; } ;
struct TYPE_8__ {void* DestAddress; void* SrcAddress; int /*<<< orphan*/  Protocol; } ;
struct TYPE_7__ {int PacketSize; void* PacketData; } ;
typedef  TYPE_1__ PKT ;
typedef  TYPE_2__ MAC_HEADER ;
typedef  TYPE_3__ L3IF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ MAC_HEADER_SIZE ; 
 void* FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (int) ; 

void FUNC5(L3IF *f, UCHAR *dest_mac, UCHAR *src_mac, USHORT protocol, void *data, UINT size)
{
	UCHAR *buf;
	MAC_HEADER *mac_header;
	PKT *p;
	// Validate arguments
	if (f == NULL || dest_mac == NULL || src_mac == NULL || data == NULL)
	{
		return;
	}

	// Buffer creation
	buf = FUNC3(MAC_HEADER_SIZE + size);

	// MAC header
	mac_header = (MAC_HEADER *)&buf[0];
	FUNC0(mac_header->DestAddress, dest_mac, 6);
	FUNC0(mac_header->SrcAddress, src_mac, 6);
	mac_header->Protocol = FUNC1(protocol);

	// Copy data
	FUNC0(&buf[sizeof(MAC_HEADER)], data, size);

	// Size
	size += sizeof(MAC_HEADER);

	// Packet generation
	p = FUNC4(sizeof(PKT));
	p->PacketData = buf;
	p->PacketSize = size;

	// Add to the queue
	FUNC2(f->SendQueue, p);
}