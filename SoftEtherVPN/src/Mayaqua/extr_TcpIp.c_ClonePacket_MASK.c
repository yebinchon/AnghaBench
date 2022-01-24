#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UDP_HEADER ;
struct TYPE_11__ {int /*<<< orphan*/ * NeighborAdvertisementHeader; int /*<<< orphan*/ * NeighborSoliciationHeader; int /*<<< orphan*/ * RouterAdvertisementHeader; int /*<<< orphan*/ * RouterSoliciationHeader; } ;
struct TYPE_16__ {int PayloadSize; int DataSize; int EchoDataSize; int /*<<< orphan*/  DestAddress; int /*<<< orphan*/  SrcAddress; int /*<<< orphan*/  OptionList; TYPE_1__ Headers; int /*<<< orphan*/  Type; int /*<<< orphan*/ * EchoData; int /*<<< orphan*/ * Data; int /*<<< orphan*/ * Payload; int /*<<< orphan*/ * FragmentHeader; int /*<<< orphan*/ * RoutingHeader; int /*<<< orphan*/ * EndPointHeader; int /*<<< orphan*/ * HopHeader; int /*<<< orphan*/ * IPv6Header; } ;
struct TYPE_12__ {TYPE_7__* IkeHeader; TYPE_7__* DHCPv4Header; } ;
struct TYPE_14__ {TYPE_7__* UDPHeader; TYPE_7__* TCPHeader; TYPE_7__* ICMPHeader; } ;
struct TYPE_13__ {TYPE_7__* IPv6Header; TYPE_7__* IPv4Header; TYPE_7__* ARPv4Header; } ;
struct TYPE_15__ {int PacketSize; int TypeL3; int TypeL4; int TypeL7; int /*<<< orphan*/ * HttpLog; TYPE_7__* PacketData; TYPE_7__* MacHeader; int /*<<< orphan*/  MacAddressDest; int /*<<< orphan*/  MacAddressSrc; int /*<<< orphan*/  DnsQueryHost; TYPE_2__ L7; TYPE_4__ L4; TYPE_7__ ICMPv6HeaderPacketInfo; TYPE_7__ IPv6HeaderPacketInfo; TYPE_3__ L3; int /*<<< orphan*/  InvalidSourcePacket; int /*<<< orphan*/  BroadcastPacket; } ;
typedef  int /*<<< orphan*/  TCP_HEADER ;
typedef  TYPE_5__ PKT ;
typedef  int /*<<< orphan*/  MAC_HEADER ;
typedef  int /*<<< orphan*/  IPV6_OPTION_HEADER ;
typedef  int /*<<< orphan*/  IPV6_HEADER_PACKET_INFO ;
typedef  int /*<<< orphan*/  IPV6_HEADER ;
typedef  int /*<<< orphan*/  IPV6_FRAGMENT_HEADER ;
typedef  int /*<<< orphan*/  IPV4_HEADER ;
typedef  int /*<<< orphan*/  IKE_HEADER ;
typedef  int /*<<< orphan*/  ICMP_HEADER ;
typedef  int /*<<< orphan*/  ICMPV6_ROUTER_SOLICIATION_HEADER ;
typedef  int /*<<< orphan*/  ICMPV6_ROUTER_ADVERTISEMENT_HEADER ;
typedef  int /*<<< orphan*/  ICMPV6_NEIGHBOR_SOLICIATION_HEADER ;
typedef  int /*<<< orphan*/  ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER ;
typedef  int /*<<< orphan*/  ICMPV6_HEADER_INFO ;
typedef  int /*<<< orphan*/  HTTPLOG ;
typedef  int /*<<< orphan*/  DHCPV4_HEADER ;
typedef  int /*<<< orphan*/  ARPV4_HEADER ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,TYPE_7__*,int) ; 
#define  ICMPV6_TYPE_ECHO_REQUEST 143 
#define  ICMPV6_TYPE_ECHO_RESPONSE 142 
#define  ICMPV6_TYPE_NEIGHBOR_ADVERTISEMENT 141 
#define  ICMPV6_TYPE_NEIGHBOR_SOLICIATION 140 
#define  ICMPV6_TYPE_ROUTER_ADVERTISEMENT 139 
#define  ICMPV6_TYPE_ROUTER_SOLICIATION 138 
#define  L3_ARPV4 137 
#define  L3_IPV4 136 
#define  L3_IPV6 135 
#define  L4_ICMPV4 134 
#define  L4_ICMPV6 133 
#define  L4_TCP 132 
#define  L4_UDP 131 
#define  L7_DHCPV4 130 
#define  L7_DNS 129 
#define  L7_IKECONN 128 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int) ; 

PKT *FUNC6(PKT *p, bool copy_data)
{
	PKT *ret;
	// Validate arguments
	if (p == NULL)
	{
		return NULL;
	}

	ret = FUNC5(sizeof(PKT));
	ret->PacketSize = p->PacketSize;

	// Copy of the MAC header
	ret->MacHeader = FUNC3(sizeof(MAC_HEADER));
	FUNC2(ret->MacHeader, p->MacHeader, sizeof(MAC_HEADER));

	// Copy of the MAC flag
	ret->BroadcastPacket = p->BroadcastPacket;
	ret->InvalidSourcePacket = p->InvalidSourcePacket;

	// Copy of the IPv6 related structure
	FUNC2(&ret->IPv6HeaderPacketInfo, &p->IPv6HeaderPacketInfo, sizeof(IPV6_HEADER_PACKET_INFO));
	FUNC2(&ret->ICMPv6HeaderPacketInfo, &p->ICMPv6HeaderPacketInfo, sizeof(ICMPV6_HEADER_INFO));

	// Layer 3
	ret->TypeL3 = p->TypeL3;
	switch (ret->TypeL3)
	{
	case L3_ARPV4:
		// ARP packet
		ret->L3.ARPv4Header = FUNC3(sizeof(ARPV4_HEADER));
		FUNC2(ret->L3.ARPv4Header, p->L3.ARPv4Header, sizeof(ARPV4_HEADER));
		break;

	case L3_IPV4:
		// IPv4 packet
		ret->L3.IPv4Header = FUNC3(sizeof(IPV4_HEADER));
		FUNC2(ret->L3.IPv4Header, p->L3.IPv4Header, sizeof(IPV4_HEADER));
		break;

	case L3_IPV6:
		// IPv6 packet
		ret->L3.IPv6Header = FUNC3(sizeof(IPV6_HEADER));
		FUNC2(ret->L3.IPv6Header, p->L3.IPv6Header, sizeof(IPV6_HEADER));

		ret->IPv6HeaderPacketInfo.IPv6Header = FUNC0(p->IPv6HeaderPacketInfo.IPv6Header,
			sizeof(IPV6_HEADER));

		ret->IPv6HeaderPacketInfo.HopHeader = FUNC0(p->IPv6HeaderPacketInfo.HopHeader,
			sizeof(IPV6_OPTION_HEADER));

		ret->IPv6HeaderPacketInfo.EndPointHeader = FUNC0(p->IPv6HeaderPacketInfo.EndPointHeader,
			sizeof(IPV6_OPTION_HEADER));

		ret->IPv6HeaderPacketInfo.RoutingHeader = FUNC0(p->IPv6HeaderPacketInfo.RoutingHeader,
			sizeof(IPV6_OPTION_HEADER));

		ret->IPv6HeaderPacketInfo.FragmentHeader = FUNC0(p->IPv6HeaderPacketInfo.FragmentHeader,
			sizeof(IPV6_FRAGMENT_HEADER));

		ret->IPv6HeaderPacketInfo.Payload = FUNC0(p->IPv6HeaderPacketInfo.Payload,
			p->IPv6HeaderPacketInfo.PayloadSize);
		break;
	}

	// Layer 4
	ret->TypeL4 = p->TypeL4;
	switch (ret->TypeL4)
	{
	case L4_ICMPV4:
		// ICMPv4 packet
		ret->L4.ICMPHeader = FUNC3(sizeof(ICMP_HEADER));
		FUNC2(ret->L4.ICMPHeader, p->L4.ICMPHeader, sizeof(ICMP_HEADER));
		break;

	case L4_ICMPV6:
		// ICMPv6 packet
		ret->L4.ICMPHeader = FUNC3(sizeof(ICMP_HEADER));
		FUNC2(ret->L4.ICMPHeader, p->L4.ICMPHeader, sizeof(ICMP_HEADER));

		ret->ICMPv6HeaderPacketInfo.Data = FUNC0(p->ICMPv6HeaderPacketInfo.Data,
			p->ICMPv6HeaderPacketInfo.DataSize);

		ret->ICMPv6HeaderPacketInfo.EchoData = FUNC0(p->ICMPv6HeaderPacketInfo.EchoData,
			p->ICMPv6HeaderPacketInfo.EchoDataSize);

		switch (ret->ICMPv6HeaderPacketInfo.Type)
		{
		case ICMPV6_TYPE_ECHO_REQUEST:
		case ICMPV6_TYPE_ECHO_RESPONSE:
			break;

		case ICMPV6_TYPE_ROUTER_SOLICIATION:
			ret->ICMPv6HeaderPacketInfo.Headers.RouterSoliciationHeader =
				FUNC0(p->ICMPv6HeaderPacketInfo.Headers.RouterSoliciationHeader,
				sizeof(ICMPV6_ROUTER_SOLICIATION_HEADER));
			break;

		case ICMPV6_TYPE_ROUTER_ADVERTISEMENT:
			ret->ICMPv6HeaderPacketInfo.Headers.RouterAdvertisementHeader =
				FUNC0(p->ICMPv6HeaderPacketInfo.Headers.RouterAdvertisementHeader,
				sizeof(ICMPV6_ROUTER_ADVERTISEMENT_HEADER));
			break;

		case ICMPV6_TYPE_NEIGHBOR_SOLICIATION:
			ret->ICMPv6HeaderPacketInfo.Headers.NeighborSoliciationHeader =
				FUNC0(p->ICMPv6HeaderPacketInfo.Headers.NeighborSoliciationHeader,
				sizeof(ICMPV6_NEIGHBOR_SOLICIATION_HEADER));
			break;

		case ICMPV6_TYPE_NEIGHBOR_ADVERTISEMENT:
			ret->ICMPv6HeaderPacketInfo.Headers.NeighborAdvertisementHeader =
				FUNC0(p->ICMPv6HeaderPacketInfo.Headers.NeighborAdvertisementHeader,
				sizeof(ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER));
			break;
		}

		FUNC1(&ret->ICMPv6HeaderPacketInfo.OptionList,
			&p->ICMPv6HeaderPacketInfo.OptionList);
		break;

	case L4_TCP:
		// TCP packet
		ret->L4.TCPHeader = FUNC3(sizeof(TCP_HEADER));
		FUNC2(ret->L4.TCPHeader, p->L4.TCPHeader, sizeof(TCP_HEADER));
		break;

	case L4_UDP:
		// UDP packet
		ret->L4.UDPHeader = FUNC3(sizeof(UDP_HEADER));
		FUNC2(ret->L4.UDPHeader, p->L4.UDPHeader, sizeof(UDP_HEADER));
		break;
	}

	// Layer 7
	ret->TypeL7 = p->TypeL7;
	switch (ret->TypeL7)
	{
	case L7_DHCPV4:
		// DHCP packet
		ret->L7.DHCPv4Header = FUNC3(sizeof(DHCPV4_HEADER));
		FUNC2(ret->L7.DHCPv4Header, p->L7.DHCPv4Header, sizeof(DHCPV4_HEADER));
		break;

	case L7_IKECONN:
		// IKE packet
		ret->L7.IkeHeader = FUNC3(sizeof(IKE_HEADER));
		FUNC2(ret->L7.IkeHeader, p->L7.IkeHeader, sizeof(IKE_HEADER));
		break;
 
 	case L7_DNS:
 		FUNC4(ret->DnsQueryHost, sizeof(ret->DnsQueryHost), p->DnsQueryHost);
 		break;
	}

	// Address data
	ret->MacAddressSrc = ret->MacHeader->SrcAddress;
	ret->MacAddressDest = ret->MacHeader->DestAddress;

	if (copy_data)
	{
		// Copy also the packet body
		ret->PacketData = FUNC3(p->PacketSize);
		FUNC2(ret->PacketData, p->PacketData, p->PacketSize);
	}

	if (p->HttpLog != NULL)
	{
		ret->HttpLog = FUNC0(p->HttpLog, sizeof(HTTPLOG));
	}

	return ret;
}