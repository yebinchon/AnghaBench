#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  beacon_str ;
typedef  int /*<<< orphan*/  arp ;
typedef  int USHORT ;
typedef  int UINT ;
struct TYPE_16__ {int /*<<< orphan*/  Checksum; void* PacketLength; void* SrcPort; void* DstPort; } ;
typedef  TYPE_1__ UDP_HEADER ;
struct TYPE_17__ {int HardwareSize; int ProtocolSize; int SrcIP; int* TargetAddress; int TargetIP; struct TYPE_17__* SrcAddress; void* Operation; void* ProtocolType; void* HardwareType; } ;
typedef  TYPE_2__ UCHAR ;
struct TYPE_19__ {int DstIP; int SrcIP; int /*<<< orphan*/  Checksum; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  TimeToLive; void* TotalLength; int /*<<< orphan*/  TypeOfService; } ;
struct TYPE_18__ {scalar_t__ LastBeaconSent; int IpAddress; int SubnetMask; char* MacAddress; } ;
typedef  TYPE_3__ L3IF ;
typedef  TYPE_4__ IPV4_HEADER ;
typedef  TYPE_2__ ARPV4_HEADER ;

/* Variables and functions */
 int ARP_HARDWARE_TYPE_ETHERNET ; 
 int ARP_OPERATION_RESPONSE ; 
 scalar_t__ BEACON_SEND_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  DEFAULT_IP_TOS ; 
 int /*<<< orphan*/  DEFAULT_IP_TTL ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int IP_HEADER_SIZE ; 
 int /*<<< orphan*/  IP_PROTO_UDP ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,TYPE_2__*,int) ; 
 int MAC_PROTO_ARPV4 ; 
 int MAC_PROTO_IPV4 ; 
 scalar_t__ FUNC8 () ; 
 TYPE_2__* FUNC9 (int) ; 
 int /*<<< orphan*/  broadcast ; 

void FUNC10(L3IF *f)
{
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	if (f->LastBeaconSent == 0 ||
		(f->LastBeaconSent + BEACON_SEND_INTERVAL) <= FUNC8())
	{
		UINT dest_ip;
		UCHAR *udp_buf;
		UINT udp_buf_size;
		ARPV4_HEADER arp;
		IPV4_HEADER *ip;
		UDP_HEADER *udp;
		static char beacon_str[] =
			"PacketiX VPN Virtual Layer-3 Switch Beacon";

		// Send an UDP
		dest_ip = (f->IpAddress & f->SubnetMask) | (~f->SubnetMask);
		udp_buf_size = sizeof(IPV4_HEADER) + sizeof(UDP_HEADER) + sizeof(beacon_str);
		udp_buf = FUNC9(udp_buf_size);

		ip = (IPV4_HEADER *)udp_buf;
		udp = (UDP_HEADER *)(udp_buf + sizeof(IPV4_HEADER));
		udp->DstPort = FUNC2(7);
		udp->SrcPort = FUNC2(7);
		udp->PacketLength = FUNC2(sizeof(UDP_HEADER) + sizeof(beacon_str));

		FUNC1(udp_buf + sizeof(IPV4_HEADER) + sizeof(UDP_HEADER), beacon_str, sizeof(beacon_str));

		udp->Checksum = FUNC0(f->IpAddress, dest_ip, 0x11, udp, sizeof(UDP_HEADER) + sizeof(beacon_str), 0);

		ip->DstIP = dest_ip;
		FUNC5(ip, 4);
		FUNC4(ip, (IP_HEADER_SIZE / 4));
		ip->TypeOfService = DEFAULT_IP_TOS;
		ip->TotalLength = FUNC2((USHORT)(udp_buf_size));
		ip->TimeToLive = DEFAULT_IP_TTL;
		ip->Protocol = IP_PROTO_UDP;
		ip->SrcIP = f->IpAddress;
		ip->Checksum = FUNC6(ip, IP_HEADER_SIZE);

		FUNC7(f, broadcast, f->MacAddress, MAC_PROTO_IPV4, udp_buf, udp_buf_size);

		FUNC3(udp_buf);

		// Build the ARP header
		arp.HardwareType = FUNC2(ARP_HARDWARE_TYPE_ETHERNET);
		arp.ProtocolType = FUNC2(MAC_PROTO_IPV4);
		arp.HardwareSize = 6;
		arp.ProtocolSize = 4;
		arp.Operation = FUNC2(ARP_OPERATION_RESPONSE);
		FUNC1(arp.SrcAddress, f->MacAddress, 6);
		arp.SrcIP = f->IpAddress;
		arp.TargetAddress[0] =
			arp.TargetAddress[1] =
			arp.TargetAddress[2] =
			arp.TargetAddress[3] =
			arp.TargetAddress[4] =
			arp.TargetAddress[5] = 0xff;
		arp.TargetIP = dest_ip;

		// Transmission
		FUNC7(f, broadcast, f->MacAddress, MAC_PROTO_ARPV4, &arp, sizeof(arp));

		f->LastBeaconSent = FUNC8();
	}
}