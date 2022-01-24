#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_28__ {scalar_t__ SrcIP; int TimeToLive; scalar_t__ DstIP; int Type; void* Checksum; scalar_t__* FlagsAndFragmentOffset; void* Protocol; void* TotalLength; } ;
struct TYPE_27__ {scalar_t__ IpAddress; int /*<<< orphan*/  Switch; } ;
struct TYPE_26__ {int NextHopIp; TYPE_3__* Packet; scalar_t__ Expire; } ;
struct TYPE_24__ {TYPE_6__* IPv4Header; } ;
struct TYPE_23__ {TYPE_6__* ICMPHeader; } ;
struct TYPE_25__ {int PacketSize; scalar_t__ TypeL4; int* PacketData; TYPE_2__ L3; TYPE_1__ L4; scalar_t__ BroadcastPacket; int /*<<< orphan*/  MacAddressSrc; } ;
typedef  TYPE_3__ PKT ;
typedef  int /*<<< orphan*/  MAC_HEADER ;
typedef  TYPE_4__ L3PACKET ;
typedef  TYPE_5__ L3IF ;
typedef  TYPE_6__ IPV4_HEADER ;
typedef  TYPE_6__ ICMP_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,TYPE_6__*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ ICMP_TYPE_ECHO_REQUEST ; 
 scalar_t__ ICMP_TYPE_ECHO_RESPONSE ; 
 int FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 void* IP_PROTO_ICMPV4 ; 
 scalar_t__ IP_WAIT_FOR_ARP_TIMEOUT ; 
 int FUNC7 (TYPE_6__*) ; 
 void* FUNC8 (TYPE_6__*,int) ; 
 TYPE_5__* FUNC9 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ L4_ICMPV4 ; 
 int FUNC12 (int,int) ; 
 TYPE_3__* FUNC13 (int*,int) ; 
 scalar_t__ FUNC14 () ; 
 void* FUNC15 (int) ; 

void FUNC16(L3IF *f, PKT *p, bool self)
{
	IPV4_HEADER *ip;
	UINT header_size;
	UINT next_hop = 0;
	L3IF *dst;
	L3PACKET *packet;
	UINT new_ttl = 0;
	// Validate arguments
	if (f == NULL || p == NULL)
	{
		return;
	}

	ip = p->L3.IPv4Header;
	header_size = FUNC4(p->L3.IPv4Header) * 4;

	// Calculate the checksum
	if (FUNC7(ip) == false)
	{
		// The checksum does not match
		goto FREE_PACKET;
	}

	// Register in the ARP table
	FUNC10(f, ip->SrcIP, p->MacAddressSrc);

	if (p->BroadcastPacket)
	{
		// Not to route in the case of broadcast packet
		goto FREE_PACKET;
	}

	// Calculate the TTL
	if (ip->TimeToLive >= 1)
	{
		new_ttl = ip->TimeToLive - 1;
	}
	else
	{
		new_ttl = 0;
	}

	if (new_ttl == 0)
	{
		if (ip->DstIP != f->IpAddress)
		{
			UINT src_packet_size = p->PacketSize - sizeof(MAC_HEADER);
			UINT icmp_packet_total_size = sizeof(MAC_HEADER) + sizeof(IPV4_HEADER) + sizeof(ICMP_HEADER) + 4 + header_size + 8;
			UCHAR *buf;
			IPV4_HEADER *ipv4;
			ICMP_HEADER *icmpv4;
			UCHAR *data;
			PKT *pkt;
			UINT data_size = FUNC12(p->PacketSize - header_size, header_size + 8);

			// Generate an ICMP message that means that the TTL has expired
			buf = FUNC15(icmp_packet_total_size);
			ipv4 = (IPV4_HEADER *)(buf + sizeof(MAC_HEADER));
			icmpv4 = (ICMP_HEADER *)(buf + sizeof(MAC_HEADER) + sizeof(IPV4_HEADER));
			data = buf + sizeof(MAC_HEADER) + sizeof(IPV4_HEADER) + sizeof(ICMP_HEADER) + 4;

			FUNC6(ipv4, 4);
			FUNC5(ipv4, sizeof(IPV4_HEADER) / 4);
			ipv4->TotalLength = FUNC1((USHORT)(icmp_packet_total_size - sizeof(MAC_HEADER)));
			ipv4->TimeToLive = 0xff;
			ipv4->Protocol = IP_PROTO_ICMPV4;
			ipv4->SrcIP = f->IpAddress;
			ipv4->DstIP = ip->SrcIP;
			ipv4->Checksum = FUNC8(ipv4, sizeof(IPV4_HEADER));

			icmpv4->Type = 11;
			FUNC0(data, ip, data_size);
			icmpv4->Checksum = FUNC8(icmpv4, sizeof(ICMP_HEADER) + data_size + 4);

			buf[12] = 0x08;
			buf[13] = 0x00;

			pkt = FUNC13(buf, icmp_packet_total_size);
			if (pkt == NULL)
			{
				FUNC2(buf);
			}
			else
			{
				FUNC16(f, pkt, true);
			}

			// Discard the packet body whose the TTL has expired
			goto FREE_PACKET;
		}
	}

	// Rewrite the TTL
	p->L3.IPv4Header->TimeToLive = (UCHAR)new_ttl;

	// Get the interface corresponding to the destination IP address
	dst = FUNC9(f->Switch, ip->DstIP, &next_hop);

	if (dst == NULL && self == false)
	{
		UINT src_packet_size = p->PacketSize - sizeof(MAC_HEADER);
		UINT icmp_packet_total_size = sizeof(MAC_HEADER) + sizeof(IPV4_HEADER) + sizeof(ICMP_HEADER) + 4 + header_size + 8;
		UCHAR *buf;
		IPV4_HEADER *ipv4;
		ICMP_HEADER *icmpv4;
		UCHAR *data;
		PKT *pkt;
			UINT data_size = FUNC12(p->PacketSize - header_size, header_size + 8);

		// Respond with ICMP that indicates that no route can be found
		buf = FUNC15(icmp_packet_total_size);
		ipv4 = (IPV4_HEADER *)(buf + sizeof(MAC_HEADER));
		icmpv4 = (ICMP_HEADER *)(buf + sizeof(MAC_HEADER) + sizeof(IPV4_HEADER));
		data = buf + sizeof(MAC_HEADER) + sizeof(IPV4_HEADER) + sizeof(ICMP_HEADER) + 4;

		FUNC6(ipv4, 4);
		FUNC5(ipv4, sizeof(IPV4_HEADER) / 4);
		ipv4->TotalLength = FUNC1((USHORT)(icmp_packet_total_size - sizeof(MAC_HEADER)));
		ipv4->TimeToLive = 0xff;
		ipv4->Protocol = IP_PROTO_ICMPV4;
		ipv4->SrcIP = f->IpAddress;
		ipv4->DstIP = ip->SrcIP;
		ipv4->Checksum = FUNC8(ipv4, sizeof(IPV4_HEADER));

		icmpv4->Type = 3;
		FUNC0(data, ip, data_size);
		icmpv4->Checksum = FUNC8(icmpv4, sizeof(ICMP_HEADER) + data_size + 4);

		buf[12] = 0x08;
		buf[13] = 0x00;

		pkt = FUNC13(buf, icmp_packet_total_size);
		if (pkt == NULL)
		{
			FUNC2(buf);
		}
		else
		{
			FUNC16(f, pkt, true);
		}

		// Discard the packet body whose route can not be found
		goto FREE_PACKET;
	}

	if (dst != NULL && ip->DstIP == dst->IpAddress)
	{
		bool free_packet = true;
		// IP packet addressed to myself has arrived
		if (p->TypeL4 == L4_ICMPV4)
		{
			ICMP_HEADER *icmp = p->L4.ICMPHeader;
			if (icmp->Type == ICMP_TYPE_ECHO_REQUEST)
			{
				// Reply by rewriting the source and destination of the IP packet
				UINT src_ip, dst_ip;
				src_ip = p->L3.IPv4Header->DstIP;
				dst_ip = p->L3.IPv4Header->SrcIP;

				p->L3.IPv4Header->DstIP = dst_ip;
				p->L3.IPv4Header->SrcIP = src_ip;

				ip->TimeToLive = 0xff;

				// Recalculates the checksum
				ip->FlagsAndFragmentOffset[0] = ip->FlagsAndFragmentOffset[1] = 0;
				icmp->Checksum = 0;
				icmp->Type = ICMP_TYPE_ECHO_RESPONSE;
				icmp->Checksum = FUNC8(icmp, p->PacketSize - sizeof(MAC_HEADER) - header_size);

				dst = FUNC9(f->Switch, ip->DstIP, &next_hop);

				free_packet = false;
			}
		}

		if (free_packet)
		{
			goto FREE_PACKET;
		}
	}

	if (dst == NULL)
	{
		// The destination does not exist
		goto FREE_PACKET;
	}

	// Recalculate the IP checksum
	ip->Checksum = 0;
	ip->Checksum = FUNC8(ip, header_size);

	// Treat as a Layer-3 packet
	packet = FUNC15(sizeof(L3PACKET));
	packet->Expire = FUNC14() + IP_WAIT_FOR_ARP_TIMEOUT;
	packet->NextHopIp = next_hop;
	packet->Packet = p;

	// Store to the destination session
	FUNC11(f, dst, packet);

	return;

FREE_PACKET:
	// Release the packet
	FUNC2(p->PacketData);
	FUNC3(p);
	return;
}