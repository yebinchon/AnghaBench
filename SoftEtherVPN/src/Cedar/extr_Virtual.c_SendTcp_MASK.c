#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tcp_mss_option ;
typedef  int /*<<< orphan*/  VH ;
typedef  void* USHORT ;
typedef  scalar_t__ UINT ;
typedef  int UCHAR ;
struct TYPE_9__ {void* PacketLength; int /*<<< orphan*/  Protocol; scalar_t__ Reserved; scalar_t__ DstIP; scalar_t__ SrcIP; } ;
struct TYPE_8__ {int Flag; scalar_t__ Checksum; scalar_t__ UrgentPointer; void* WindowSize; scalar_t__ HeaderSizeAndReserved; void* AckNumber; void* SeqNumber; void* DstPort; void* SrcPort; } ;
typedef  TYPE_1__ TCP_HEADER ;
typedef  TYPE_2__ IPV4_PSEUDO_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,void*,scalar_t__) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  IP_PROTO_TCP ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int TCP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

void FUNC8(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, UINT seq, UINT ack, UINT flag, UINT window_size, UINT mss, void *data, UINT size)
{
	static UCHAR tcp_mss_option[] = {0x02, 0x04, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00};
	IPV4_PSEUDO_HEADER *vh;
	TCP_HEADER *tcp;
	UINT header_size = TCP_HEADER_SIZE;
	UINT total_size;
	// Validate arguments
	if (v == NULL || (size != 0 && data == NULL))
	{
		return;
	}

	// Memory allocation
	vh = FUNC5(sizeof(IPV4_PSEUDO_HEADER) + TCP_HEADER_SIZE + size + 32);
	tcp = (TCP_HEADER *)(((UCHAR *)vh) + sizeof(IPV4_PSEUDO_HEADER));

	if (mss != 0)
	{
		USHORT *mss_size;
		mss_size = (USHORT *)(&tcp_mss_option[2]);
		*mss_size = FUNC1((USHORT)mss);
		header_size += sizeof(tcp_mss_option);
	}

	total_size = header_size + size;
	if (total_size > 65536)
	{
		// Packet is too long
		FUNC3(vh);
		return;
	}

	// Pseudo header generation
	vh->SrcIP = src_ip;
	vh->DstIP = dest_ip;
	vh->Reserved = 0;
	vh->Protocol = IP_PROTO_TCP;
	vh->PacketLength = FUNC1((USHORT)total_size);

	// TCP header generation
	tcp->SrcPort = FUNC1((USHORT)src_port);
	tcp->DstPort = FUNC1((USHORT)dest_port);
	tcp->SeqNumber = FUNC2(seq);
	tcp->AckNumber = FUNC2(ack);
	tcp->HeaderSizeAndReserved = 0;
	FUNC7(tcp, (UCHAR)(header_size / 4));
	tcp->Flag = (UCHAR)flag;
	tcp->WindowSize = FUNC1((USHORT)window_size);
	tcp->Checksum = 0;
	tcp->UrgentPointer = 0;

	// Copy the option values
	if (mss != 0)
	{
		FUNC0(((UCHAR *)tcp) + TCP_HEADER_SIZE, tcp_mss_option, sizeof(tcp_mss_option));
	}

	// Data copy
	FUNC0(((UCHAR *)tcp) + header_size, data, size);

	// Checksum calculation
	tcp->Checksum = FUNC4(vh, total_size + 12);

	// Submit as an IP packet
	FUNC6(v, dest_ip, src_ip, IP_PROTO_TCP, tcp, total_size);

	// Release the memory
	FUNC3(vh);
}