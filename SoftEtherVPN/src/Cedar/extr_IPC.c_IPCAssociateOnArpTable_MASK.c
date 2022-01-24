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
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_14__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_13__ {int /*<<< orphan*/  ArpTable; int /*<<< orphan*/  BroadcastAddress; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  ClientIPAddress; int /*<<< orphan*/  MacAddress; } ;
struct TYPE_12__ {int Resolved; scalar_t__ ExpireTime; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  PacketQueue; scalar_t__ GiveupTime; } ;
typedef  TYPE_1__ IPC_ARP ;
typedef  TYPE_2__ IPC ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_3__ BLOCK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IPC_ARP_LIFETIME ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 

void FUNC13(IPC *ipc, IP *ip, UCHAR *mac_address)
{
	IPC_ARP *a;
	// Validate arguments 
	if (ipc == NULL || ip == NULL || FUNC10(ip) == false || FUNC11(mac_address) == false)
	{
		return;
	}
	if (FUNC1(&ipc->ClientIPAddress, ip) == 0 || FUNC0(ipc->MacAddress, mac_address, 6) == 0)
	{
		return;
	}
	if (FUNC9(ip, &ipc->ClientIPAddress, &ipc->SubnetMask) == false)
	{
		// Not to learn the IP address of outside the subnet
		return;
	}

	if (FUNC1(&ipc->BroadcastAddress, ip) == 0)
	{
		// Not to learn the broadcast IP address
		return;
	}

	// Search whether there is ARP table entry already
	a = FUNC6(ipc, ip);
	if (a == NULL)
	{
		// Add to the ARP table
		a = FUNC5(ip, mac_address);

		FUNC8(ipc->ArpTable, a);
	}
	else
	{
		FUNC2(a->MacAddress, mac_address, 6);

		// There is the ARP table entry already
		if (a->Resolved == false)
		{
			a->Resolved = true;
			a->GiveupTime = 0;

			// Send all the packets that are accumulated to be sent
			while (true)
			{
				BLOCK *b = FUNC4(a->PacketQueue);

				if (b == NULL)
				{
					break;
				}

				FUNC7(ipc, b->Buf, b->Size, a->MacAddress);

				FUNC3(b);
			}
		}

		// Extend the expiration date
		a->ExpireTime = FUNC12() + (UINT64)IPC_ARP_LIFETIME;
	}
}