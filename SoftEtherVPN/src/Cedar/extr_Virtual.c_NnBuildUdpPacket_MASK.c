#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ph ;
typedef  int /*<<< orphan*/  h ;
typedef  scalar_t__ USHORT ;
typedef  void* UINT ;
struct TYPE_15__ {int /*<<< orphan*/  Checksum; void* PacketLength; void* DstPort; void* SrcPort; void* PacketLength2; void* PacketLength1; int /*<<< orphan*/  Protocol; void* DstIP; void* SrcIP; } ;
typedef  TYPE_1__ UDP_HEADER ;
typedef  TYPE_1__ UDPV4_PSEUDO_HEADER ;
struct TYPE_16__ {int Size; TYPE_1__* Buf; } ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  IP_PROTO_UDP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

BUF *FUNC8(BUF *payload, UINT src_ip, USHORT src_port, UINT dst_ip, USHORT dst_port)
{
	BUF *ret = FUNC3();
	BUF *phbuf = FUNC3();
	UDPV4_PSEUDO_HEADER ph;
	UDP_HEADER h;

	// UDP pseudo header
	FUNC7(&ph, sizeof(ph));

	ph.SrcIP = src_ip;
	ph.DstIP = dst_ip;
	ph.SrcPort = FUNC0(src_port);
	ph.DstPort = FUNC0(dst_port);
	ph.Protocol = IP_PROTO_UDP;
	ph.PacketLength1 = ph.PacketLength2 = FUNC0(payload->Size + (USHORT)sizeof(UDP_HEADER));

	FUNC5(phbuf, &ph, sizeof(ph));
	FUNC6(phbuf, payload);

	// UDP header
	FUNC7(&h, sizeof(h));
	h.SrcPort = FUNC0(src_port);
	h.DstPort = FUNC0(dst_port);
	h.PacketLength = FUNC0(payload->Size + (USHORT)sizeof(UDP_HEADER));
	h.Checksum = FUNC2(phbuf->Buf, phbuf->Size);

	FUNC5(ret, &h, sizeof(h));
	FUNC5(ret, payload->Buf, payload->Size);

	FUNC4(ret);

	FUNC1(payload);
	FUNC1(phbuf);

	return ret;
}