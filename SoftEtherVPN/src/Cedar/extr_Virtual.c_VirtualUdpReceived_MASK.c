#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ HostIP; TYPE_1__* HubOption; int /*<<< orphan*/  HostMask; } ;
typedef  TYPE_2__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {int /*<<< orphan*/  DstPort; int /*<<< orphan*/  SrcPort; int /*<<< orphan*/  PacketLength; } ;
typedef  TYPE_3__ UDP_HEADER ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_12__ {scalar_t__ DisableUserModeSecureNAT; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,scalar_t__) ; 
 scalar_t__ SPECIAL_UDP_PORT_LLMNR ; 
 scalar_t__ SPECIAL_UDP_PORT_NBTDGM ; 
 scalar_t__ SPECIAL_UDP_PORT_NBTNS ; 
 scalar_t__ SPECIAL_UDP_PORT_SSDP ; 
 scalar_t__ SPECIAL_UDP_PORT_WSD ; 
 scalar_t__ UDP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ; 

void FUNC11(VH *v, UINT src_ip, UINT dest_ip, void *data, UINT size, bool mac_broadcast, bool is_localmac, UINT max_l3_size)
{
	UDP_HEADER *udp;
	UINT packet_length;
	void *buf;
	UINT buf_size;
	UINT src_port, dest_port;
	// Validate arguments
	if (v == NULL || data == NULL)
	{
		return;
	}

	// Check the header
	udp = (UDP_HEADER *)data;
	if (size < UDP_HEADER_SIZE)
	{
		return;
	}
	packet_length = FUNC0(udp->PacketLength);
	if (packet_length != size)
	{
		return;
	}
	buf = ((UCHAR *)data) + UDP_HEADER_SIZE;
	buf_size = size - UDP_HEADER_SIZE;
	src_port = FUNC0(udp->SrcPort);
	dest_port = FUNC0(udp->DstPort);
	// Check the port number
	if (dest_port == 0)
	{
		// Port number is invalid
		return;
	}

	// Determine whether it's broadcast packet or packet addressed to myself
	if (dest_ip == v->HostIP)
	{
		// IP packet addressed to myself has arrived
		FUNC8(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size);
	}
	else if ((mac_broadcast || dest_ip == FUNC1(0xE00000FC)) && dest_port == SPECIAL_UDP_PORT_LLMNR)
	{
		if (is_localmac == false)
		{
			// Packet addressed to 224.0.0.252 (LLMNR) arrives
			FUNC10(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size);
		}
	}
	else if (mac_broadcast && (dest_port == SPECIAL_UDP_PORT_WSD || dest_port == SPECIAL_UDP_PORT_SSDP))
	{
		if (is_localmac == false)
		{
			// WS-Discovery packet arrives
			FUNC7(v, src_ip, src_port, 0xFFFFFFFF, dest_port, buf, buf_size, false);
		}
	}
	else if (mac_broadcast && (dest_port == SPECIAL_UDP_PORT_NBTDGM || dest_port == SPECIAL_UDP_PORT_NBTNS))
	{
		if (is_localmac == false)
		{
			// NetBIOS Broadcast packet arrived
			FUNC9(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size, false, false);
		}
	}
	else if (mac_broadcast || dest_ip == 0xffffffff || dest_ip == FUNC2(v->HostIP, v->HostMask))
	{
		if (is_localmac == false)
		{
			// Broadcast packet arrived
			FUNC6(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size);
		}
	}
	else if (FUNC3(dest_ip, v->HostIP, v->HostMask) == false)
	{
		// Packets to other than local address (that is on the Internet) has been received
		if (FUNC4(v) == false)
		{
			if (v->HubOption != NULL && v->HubOption->DisableUserModeSecureNAT)
			{
				// User-mode NAT is disabled
				return;
			}

			// User-mode NAT
			FUNC7(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size, false);
		}
		else
		{
			// Kernel-mode NAT
			FUNC5(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size, max_l3_size);
		}
	}
	else
	{
		// Local address has arrived. Ignore it
	}
}