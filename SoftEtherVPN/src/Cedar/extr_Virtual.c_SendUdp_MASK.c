#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VH ;
typedef  int USHORT ;
typedef  int UINT ;
struct TYPE_7__ {int Checksum; void* PacketLength; void* DstPort; void* SrcPort; } ;
typedef  TYPE_1__ UDP_HEADER ;
struct TYPE_8__ {int SrcIP; int DstIP; void* PacketLength1; int /*<<< orphan*/  Protocol; scalar_t__ Reserved; } ;
typedef  TYPE_2__ UDPV4_PSEUDO_HEADER ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  IP_PROTO_UDP ; 
 int FUNC3 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int UDP_HEADER_SIZE ; 

void FUNC6(VH *v, UINT dest_ip, UINT dest_port, UINT src_ip, UINT src_port, void *data, UINT size)
{
	UDPV4_PSEUDO_HEADER *vh;
	UDP_HEADER *udp;
	UINT udp_packet_length = UDP_HEADER_SIZE + size;
	USHORT checksum;
	// Validate arguments
	if (v == NULL || data == NULL)
	{
		return;
	}
	if (udp_packet_length > 65536)
	{
		return;
	}

	// Generate a virtual header
	vh = FUNC4(sizeof(UDPV4_PSEUDO_HEADER) + size);
	udp = (UDP_HEADER *)(((UCHAR *)vh) + 12);

	vh->SrcIP = src_ip;
	vh->DstIP = dest_ip;
	vh->Reserved = 0;
	vh->Protocol = IP_PROTO_UDP;
	vh->PacketLength1 = FUNC1((USHORT)udp_packet_length);
	udp->SrcPort = FUNC1((USHORT)src_port);
	udp->DstPort = FUNC1((USHORT)dest_port);
	udp->PacketLength = FUNC1((USHORT)udp_packet_length);
	udp->Checksum = 0;

	// Copy data
	FUNC0(((UCHAR *)udp) + UDP_HEADER_SIZE, data, size);

	// Calculate the checksum
	checksum = FUNC3(vh, udp_packet_length + 12);
	if (checksum == 0x0000)
	{
		checksum = 0xffff;
	}
	udp->Checksum = checksum;

	// Send a packet
	FUNC5(v, dest_ip, src_ip, IP_PROTO_UDP, udp, udp_packet_length);

	// Release the memory
	FUNC2(vh);
}