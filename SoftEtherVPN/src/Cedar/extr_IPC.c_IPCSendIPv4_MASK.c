#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_19__ {int* addr; } ;
struct TYPE_20__ {TYPE_2__ Gateway; } ;
struct TYPE_18__ {TYPE_2__ BroadcastAddress; TYPE_2__ DefaultGateway; int /*<<< orphan*/  ClasslessRoute; int /*<<< orphan*/  SubnetMask; TYPE_2__ ClientIPAddress; } ;
typedef  TYPE_1__ IPC ;
typedef  TYPE_2__ IP ;
typedef  TYPE_3__ DHCP_CLASSLESS_ROUTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,int,int*) ; 
 int FUNC5 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

void FUNC8(IPC *ipc, void *data, UINT size)
{
	IP ip_src, ip_dst;
	IP ip_dst_local;
	bool is_broadcast = false;
	UCHAR uc;
	DHCP_CLASSLESS_ROUTE *r = NULL;
	// Validate arguments
	if (ipc == NULL || data == NULL || size < 20 || size > 1500)
	{
		return;
	}

	uc = ((UCHAR *)data)[0];
	if (((uc >> 4) & 0x0f) != 4)
	{
		// Not an IPv4
		return;
	}

	// Extract the IP address portion
	FUNC7(&ip_src, *((UINT *)(((UCHAR *)data) + 12)));
	FUNC7(&ip_dst, *((UINT *)(((UCHAR *)data) + 16)));

	// Filter the source IP address
	if (FUNC0(&ip_src, &ipc->ClientIPAddress) != 0)
	{
		// Cut off packets from illegal IP address
		return;
	}

	if (FUNC6(&ip_dst))
	{
		// Illegal destination address
		return;
	}

	if (FUNC0(&ip_dst, &ipc->ClientIPAddress) == 0)
	{
		// Packet destined for myself
		return;
	}

	// Get the IP address of the relayed destination
	FUNC1(&ip_dst_local, &ip_dst, sizeof(IP));

	if (FUNC5(&ip_dst, &ipc->ClientIPAddress, &ipc->SubnetMask) == false)
	{
		r = FUNC2(&ipc->ClasslessRoute, &ip_dst);

		if (r == NULL)
		{
			FUNC1(&ip_dst_local, &ipc->DefaultGateway, sizeof(IP));
		}
		else
		{
			FUNC1(&ip_dst_local, &r->Gateway, sizeof(IP));
		}
	}

	if (FUNC0(&ipc->BroadcastAddress, &ip_dst) == 0)
	{
		// Local Broadcast
		is_broadcast = true;
	}

	if (ip_dst.addr[0] == 255 && ip_dst.addr[1] == 255 && ip_dst.addr[2] == 255 && ip_dst.addr[3] == 255)
	{
		// Global Broadcast
		is_broadcast = true;
	}

	if (ip_dst.addr[0] >= 224 && ip_dst.addr[0] <= 239)
	{
		// IPv4 Multicast
		is_broadcast = true;
	}

	if (is_broadcast)
	{
		// Send a broadcast packet
		UCHAR dest[6];
		UINT i;

		// Destination
		for (i = 0;i < 6;i++)
		{
			dest[i] = 0xff;
		}

		// Send
		FUNC4(ipc, data, size, dest);

		return;
	}

	if (FUNC6(&ip_dst_local))
	{
		// Unable to send
		return;
	}

	// Send a unicast packet
	FUNC3(ipc, data, size, &ip_dst_local);
}