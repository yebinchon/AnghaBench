#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  magic ;
struct TYPE_10__ {int /*<<< orphan*/  HostIP; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_12__ {int Size; scalar_t__* Buf; } ;
struct TYPE_11__ {int OpCode; void* ClientMacAddress; int /*<<< orphan*/  ServerIP; scalar_t__ YourIP; scalar_t__ Flags; scalar_t__ Seconds; void* TransactionId; scalar_t__ Hops; scalar_t__ HardwareAddressSize; scalar_t__ HardwareType; } ;
typedef  TYPE_2__ DHCPV4_HEADER ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__*,int) ; 
 scalar_t__ DHCP_MAGIC_COOKIE ; 
 scalar_t__ DHCP_MIN_SIZE ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  NAT_DHCP_SERVER_PORT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 

void FUNC5(VH *v, UINT tran_id, UINT dest_ip, UINT dest_port,
					 UINT new_ip, UCHAR *client_mac, BUF *b, UINT hw_type, UINT hw_addr_size)
{
	UINT blank_size = 128 + 64;
	UINT dhcp_packet_size;
	UINT magic = FUNC1(DHCP_MAGIC_COOKIE);
	DHCPV4_HEADER *dhcp;
	void *magic_cookie_addr;
	void *buffer_addr;
	// Validate arguments
	if (v == NULL || b == NULL)
	{
		return;
	}

	// Calculate the DHCP packet size
	dhcp_packet_size = blank_size + sizeof(DHCPV4_HEADER) + sizeof(magic) + b->Size;

	if (dhcp_packet_size < DHCP_MIN_SIZE)
	{
		// Padding
		dhcp_packet_size = DHCP_MIN_SIZE;
	}

	// Create a header
	dhcp = FUNC4(dhcp_packet_size);

	dhcp->OpCode = 2;
	dhcp->HardwareType = hw_type;
	dhcp->HardwareAddressSize = hw_addr_size;
	dhcp->Hops = 0;
	dhcp->TransactionId = FUNC1(tran_id);
	dhcp->Seconds = 0;
	dhcp->Flags = 0;
	dhcp->YourIP = new_ip;
	dhcp->ServerIP = v->HostIP;
	FUNC0(dhcp->ClientMacAddress, client_mac, 6);

	// Calculate the address
	magic_cookie_addr = (((UCHAR *)dhcp) + sizeof(DHCPV4_HEADER) + blank_size);
	buffer_addr = ((UCHAR *)magic_cookie_addr) + sizeof(magic);

	// Magic Cookie
	FUNC0(magic_cookie_addr, &magic, sizeof(magic));

	// Buffer
	FUNC0(buffer_addr, b->Buf, b->Size);

	// Transmission
	FUNC3(v, dest_ip, dest_port, v->HostIP, NAT_DHCP_SERVER_PORT, dhcp, dhcp_packet_size);

	FUNC2(dhcp);
}