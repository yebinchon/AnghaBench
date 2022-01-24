#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tcp_mss_option ;
typedef  void* USHORT ;
typedef  scalar_t__ UINT ;
typedef  int UCHAR ;
struct TYPE_15__ {scalar_t__ Size; int* Buf; } ;
struct TYPE_14__ {void* PacketLength; int /*<<< orphan*/  Protocol; scalar_t__ Reserved; scalar_t__ DstIP; scalar_t__ SrcIP; } ;
struct TYPE_13__ {int Flag; scalar_t__ Checksum; scalar_t__ UrgentPointer; void* WindowSize; scalar_t__ HeaderSizeAndReserved; void* AckNumber; void* SeqNumber; void* DstPort; void* SrcPort; } ;
typedef  TYPE_1__ TCP_HEADER ;
typedef  TYPE_2__ IPV4_PSEUDO_HEADER ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  IP_PROTO_TCP ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 TYPE_2__* FUNC6 (int) ; 
 TYPE_3__* FUNC7 (TYPE_1__*,scalar_t__) ; 
 int TCP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

BUF *FUNC9(BUF *payload, UINT src_ip, USHORT src_port, UINT dst_ip, USHORT dst_port, UINT seq, UINT ack, UINT flag, UINT window_size, UINT mss)
{
	BUF *ret;
	IPV4_PSEUDO_HEADER *vh;
	TCP_HEADER *tcp;
	static UCHAR tcp_mss_option[] = {0x02, 0x04, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00};
	UINT header_size = TCP_HEADER_SIZE;
	UINT total_size;

	// Memory allocation
	vh = FUNC6(sizeof(IPV4_PSEUDO_HEADER) + TCP_HEADER_SIZE + payload->Size + 32);
	tcp = (TCP_HEADER *)(((UCHAR *)vh) + sizeof(IPV4_PSEUDO_HEADER));

	if (mss != 0)
	{
		USHORT *mss_size;
		mss_size = (USHORT *)(&tcp_mss_option[2]);
		*mss_size = FUNC1((USHORT)mss);
		header_size += sizeof(tcp_mss_option);
	}

	total_size = header_size + payload->Size;

	// Pseudo header generation
	vh->SrcIP = src_ip;
	vh->DstIP = dst_ip;
	vh->Reserved = 0;
	vh->Protocol = IP_PROTO_TCP;
	vh->PacketLength = FUNC1((USHORT)total_size);

	// TCP header generation
	tcp->SrcPort = FUNC1((USHORT)src_port);
	tcp->DstPort = FUNC1((USHORT)dst_port);
	tcp->SeqNumber = FUNC2(seq);
	tcp->AckNumber = FUNC2(ack);
	tcp->HeaderSizeAndReserved = 0;
	FUNC8(tcp, (UCHAR)(header_size / 4));
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
	FUNC0(((UCHAR *)tcp) + header_size, payload->Buf, payload->Size);

	// Checksum calculation
	tcp->Checksum = FUNC5(vh, total_size + 12);

	ret = FUNC7(tcp, total_size);

	FUNC3(vh);

	FUNC4(payload);

	return ret;
}