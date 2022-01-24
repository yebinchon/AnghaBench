#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VH ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_16__ {int /*<<< orphan*/  TimeToLive; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  Identification; int /*<<< orphan*/  DstIP; int /*<<< orphan*/  SrcIP; int /*<<< orphan*/  TotalLength; } ;
struct TYPE_15__ {int MaxL3Size; } ;
struct TYPE_13__ {TYPE_4__* IPv4Header; scalar_t__ PointerL3; } ;
struct TYPE_14__ {int PacketSize; int /*<<< orphan*/  BroadcastPacket; TYPE_1__ L3; int /*<<< orphan*/  MacAddressSrc; } ;
typedef  TYPE_2__ PKT ;
typedef  TYPE_3__ IP_COMBINE ;
typedef  TYPE_4__ IPV4_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int,void*,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int MAC_HEADER_SIZE ; 
 int FUNC10 (int,int) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC12(VH *v, PKT *packet)
{
	IPV4_HEADER *ip;
	void *data;
	UINT data_size_recved;
	UINT size;
	UINT ipv4_header_size;
	bool last_packet;
	UCHAR *head_ip_header_data = NULL;
	UINT head_ip_header_size = 0;
	bool is_local_mac = false;
	UINT ip_l3_size;
	// Validate arguments
	if (v == NULL || packet == NULL)
	{
		return;
	}

	ip = packet->L3.IPv4Header;

	if (packet->BroadcastPacket)
	{
		is_local_mac = FUNC9(packet->MacAddressSrc);
	}

	// Get the size of the IPv4 header
	ipv4_header_size = FUNC4(packet->L3.IPv4Header) * 4;
	head_ip_header_size = ipv4_header_size;

	// Calculate the checksum of the IPv4 header
	if (FUNC7(ip) == false)
	{
		return;
	}

	// Get a pointer to the data
	data = ((UCHAR *)packet->L3.PointerL3) + ipv4_header_size;

	// Register to the ARP table
	FUNC0(v, packet->L3.IPv4Header->SrcIP, packet->MacAddressSrc);

	// Get the data size
	size = ip_l3_size = FUNC2(ip->TotalLength);
	if (size <= ipv4_header_size)
	{
		// There is no data
		return;
	}
	size -= ipv4_header_size;

	// Get the size of data actually received
	data_size_recved = packet->PacketSize - (ipv4_header_size + MAC_HEADER_SIZE);
	if (data_size_recved < size)
	{
		// Data insufficient (It may be missing on the way)
		return;
	}

	if (FUNC5(ip) == 0 && (FUNC3(ip) & 0x01) == 0)
	{
		// Because this packet has not been fragmented, it can be delivered to the upper layer immediately
		head_ip_header_data = (UCHAR *)packet->L3.IPv4Header;
		FUNC8(v, ip->SrcIP, ip->DstIP, ip->Protocol, data, size, packet->BroadcastPacket, ip->TimeToLive,
			head_ip_header_data, head_ip_header_size, is_local_mac, ip_l3_size);
	}
	else
	{
		// This packet is necessary to combine because it is fragmented
		UINT offset = FUNC5(ip) * 8;
		IP_COMBINE *c = FUNC11(v, ip->SrcIP, ip->DstIP, FUNC2(ip->Identification), ip->Protocol);

		if (offset == 0)
		{
			head_ip_header_data = (UCHAR *)packet->L3.IPv4Header;
		}

		last_packet = ((FUNC3(ip) & 0x01) == 0 ? true : false);

		if (c != NULL)
		{
			// It is the second or subsequent packet
			c->MaxL3Size = FUNC10(c->MaxL3Size, ip_l3_size);
			FUNC1(v, c, offset, data, size, last_packet, head_ip_header_data, head_ip_header_size);
		}
		else
		{
			// Create a combining object because it is the first packet
			c = FUNC6(
				v, ip->SrcIP, ip->DstIP, FUNC2(ip->Identification), ip->Protocol, packet->BroadcastPacket,
				ip->TimeToLive, is_local_mac);
			if (c != NULL)
			{
				c->MaxL3Size = ip_l3_size;

				FUNC1(v, c, offset, data, size, last_packet, head_ip_header_data, head_ip_header_size);
			}
		}
	}
}