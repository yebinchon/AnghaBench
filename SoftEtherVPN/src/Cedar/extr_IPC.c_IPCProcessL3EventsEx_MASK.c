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
typedef  scalar_t__ USHORT ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_20__ {int Size; int* Buf; } ;
struct TYPE_19__ {int* addr; } ;
struct TYPE_18__ {int /*<<< orphan*/  IPv4ReceivedQueue; TYPE_2__ ClientIPAddress; TYPE_2__ BroadcastAddress; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ IPC ;
typedef  TYPE_2__ IP ;
typedef  TYPE_3__ BLOCK ;

/* Variables and functions */
 int* FUNC0 (int*,int) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_3__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ MAC_PROTO_ARPV4 ; 
 scalar_t__ MAC_PROTO_IPV4 ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 

void FUNC17(IPC *ipc, UINT64 now)
{
	// Validate arguments
	if (ipc == NULL)
	{
		return;
	}
	if (now == 0)
	{
		now = FUNC15();
	}

	// Remove old ARP table entries
	FUNC6(ipc, now);

	// Receive all the L2 packet
	while (true)
	{
		BLOCK *b = FUNC9(ipc);
		if (b == NULL)
		{
			// All reception completed
			break;
		}

		if (b->Size >= 14)
		{
			UCHAR *dest_mac = b->Buf + 0;
			UCHAR *src_mac = b->Buf + 6;
			USHORT protocol = FUNC14(b->Buf + 12);

			// Confirm the destination MAC address
			// (Receive if the destination MAC address is the IPC address or a broadcast address)
			if (FUNC1(dest_mac, ipc->MacAddress, 6) == 0 || dest_mac[0] & 0x01)
			{
				// If the source MAC address is itselves or invalid address, ignore the packet
				if (FUNC1(src_mac, ipc->MacAddress, 6) != 0 && FUNC11(src_mac))
				{
					if (protocol == MAC_PROTO_ARPV4)
					{
						// ARP receiving process
						FUNC7(ipc, b);
					}
					else if (protocol == MAC_PROTO_IPV4)
					{
						// IPv4 receiving process
						if (b->Size >= (14 + 20))
						{
							UCHAR *data = FUNC0(b->Buf + 14, b->Size - 14);
							UINT size = b->Size - 14;
							IP ip_src, ip_dst;
							bool ok = false;

							// Extract the IP address portion
							FUNC16(&ip_src, *((UINT *)(((UCHAR *)data) + 12)));
							FUNC16(&ip_dst, *((UINT *)(((UCHAR *)data) + 16)));

							// Receive only if the IPv4 destination address is its own
							// or 255.255.255.255 or a multicast address or a broadcast address
							if (FUNC2(&ip_dst, &ipc->ClientIPAddress) == 0)
							{
								ok = true;
							}
							else if (ip_dst.addr[0] == 255 && ip_dst.addr[1] == 255 &&
								ip_dst.addr[2] == 255 && ip_dst.addr[3] == 255)
							{
								ok = true;
							}
							else if (ip_dst.addr[0] >= 224 && ip_dst.addr[0] <= 239)
							{
								ok = true;
							}
							else
							{
								if (FUNC2(&ipc->BroadcastAddress, &ip_dst) == 0)
								{
									ok = true;
								}

								if (FUNC12(&ipc->ClientIPAddress))
								{
									// Client IP address is undetermined
									ok = true;
								}
							}

							if (ok)
							{
								FUNC5(ipc, &ip_src, src_mac);

								// Place in the reception queue
								FUNC10(ipc->IPv4ReceivedQueue, FUNC13(data, size, 0));
							}
							else
							{
								// This packet is discarded because it is irrelevant for me
								FUNC3(data);
							}
						}
					}
				}
			}
		}

		FUNC4(b);
	}

	FUNC8(ipc);
}