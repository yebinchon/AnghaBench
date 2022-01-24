#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_15__ {int /*<<< orphan*/  TimeToLive; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  Identification; int /*<<< orphan*/  DstIP; int /*<<< orphan*/  SrcIP; int /*<<< orphan*/  TotalLength; } ;
struct TYPE_14__ {void* MaxL3Size; } ;
struct TYPE_12__ {TYPE_4__* IPv4Header; scalar_t__ PointerL3; } ;
struct TYPE_13__ {int PacketSize; int /*<<< orphan*/  BroadcastPacket; TYPE_1__ L3; } ;
typedef  TYPE_2__ PKT ;
typedef  int /*<<< orphan*/  NATIVE_NAT ;
typedef  TYPE_3__ IP_COMBINE ;
typedef  TYPE_4__ IPV4_HEADER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int MAC_HEADER_SIZE ; 
 void* FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int,void*,int,int,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC9(NATIVE_NAT *t, PKT *packet)
{
	IPV4_HEADER *ip;
	void *data;
	UINT data_size_recved;
	UINT size;
	UINT ipv4_header_size;
	bool last_packet = false;
	UINT l3_size = 0;
	UCHAR *head_ip_header_data = NULL;
	UINT head_ip_header_size = 0;
	// Validate arguments
	if (t == NULL || packet == NULL)
	{
		return;
	}

	ip = packet->L3.IPv4Header;

	// Get the size of the IPv4 header
	ipv4_header_size = FUNC2(packet->L3.IPv4Header) * 4;
	head_ip_header_size = ipv4_header_size;

	// Get the pointer to the data
	data = ((UCHAR *)packet->L3.PointerL3) + ipv4_header_size;

	// Get the data size
	size = l3_size = FUNC0(ip->TotalLength);
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

	if (FUNC3(ip) == 0 && (FUNC1(ip) & 0x01) == 0)
	{
		// Because this packet has not been fragmented, it can be passed to the upper layer immediately
		head_ip_header_data = (UCHAR *)packet->L3.IPv4Header;
		FUNC7(t, ip->SrcIP, ip->DstIP, ip->Protocol, data, size, ip->TimeToLive,
			head_ip_header_data, head_ip_header_size, l3_size);
	}
	else
	{
		// This packet is necessary to combine because it is fragmented
		UINT offset = FUNC3(ip) * 8;
		IP_COMBINE *c = FUNC8(t, ip->SrcIP, ip->DstIP, FUNC0(ip->Identification), ip->Protocol);

		if (offset == 0)
		{
			head_ip_header_data = (UCHAR *)packet->L3.IPv4Header;
		}

		last_packet = ((FUNC1(ip) & 0x01) == 0 ? true : false);

		if (c != NULL)
		{
			// It is the second or subsequent packet
			c->MaxL3Size = FUNC4(c->MaxL3Size, l3_size);
			FUNC5(t, c, offset, data, size, last_packet, head_ip_header_data, head_ip_header_size);
		}
		else
		{
			// Create a combining object because it is the first packet
			c = FUNC6(
				t, ip->SrcIP, ip->DstIP, FUNC0(ip->Identification), ip->Protocol, packet->BroadcastPacket,
				ip->TimeToLive, false);
			if (c != NULL)
			{
				c->MaxL3Size = FUNC4(c->MaxL3Size, l3_size);
				FUNC5(t, c, offset, data, size, last_packet, head_ip_header_data, head_ip_header_size);
			}
		}
	}
}