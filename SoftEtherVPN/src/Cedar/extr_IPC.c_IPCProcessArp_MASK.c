#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_10__ {scalar_t__ HardwareType; scalar_t__ ProtocolType; int HardwareSize; int ProtocolSize; void* TargetIP; int /*<<< orphan*/ * TargetAddress; void* SrcIP; int /*<<< orphan*/ * SrcAddress; scalar_t__ Operation; } ;
struct TYPE_9__ {int Size; int /*<<< orphan*/ * Buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  ClientIPAddress; int /*<<< orphan*/ * MacAddress; } ;
typedef  TYPE_1__ IPC ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ BLOCK ;
typedef  TYPE_3__ ARPV4_HEADER ;

/* Variables and functions */
 scalar_t__ ARP_HARDWARE_TYPE_ETHERNET ; 
 scalar_t__ ARP_OPERATION_REQUEST ; 
 scalar_t__ ARP_OPERATION_RESPONSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAC_PROTO_ARPV4 ; 
 scalar_t__ MAC_PROTO_IPV4 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(IPC *ipc, BLOCK *b)
{
	UCHAR *dest_mac;
	UCHAR *src_mac;
	ARPV4_HEADER *arp;
	UCHAR *sender_mac;
	IP sender_ip;
	UCHAR *target_mac;
	IP target_ip;
	// Validate arguments
	if (ipc == NULL || b == NULL || b->Size < (14 + sizeof(ARPV4_HEADER)))
	{
		return;
	}

	dest_mac = b->Buf + 0;
	src_mac = b->Buf + 6;

	arp = (ARPV4_HEADER *)(b->Buf + 14);

	if (arp->HardwareType != FUNC2(ARP_HARDWARE_TYPE_ETHERNET))
	{
		return;
	}
	if (arp->ProtocolType != FUNC2(MAC_PROTO_IPV4))
	{
		return;
	}
	if (arp->HardwareSize != 6 || arp->ProtocolSize != 4)
	{
		return;
	}

	sender_mac = arp->SrcAddress;
	FUNC7(&sender_ip, arp->SrcIP);

	target_mac = arp->TargetAddress;
	FUNC7(&target_ip, arp->TargetIP);

	if (FUNC0(&sender_ip, &ipc->ClientIPAddress) == 0)
	{
		// Source is myself
		return;
	}

	FUNC3(ipc, &sender_ip, sender_mac);
	FUNC3(ipc, &target_ip, target_mac);

	if (FUNC2(arp->Operation) == ARP_OPERATION_REQUEST)
	{
		// Received an ARP request
		if (FUNC0(&target_ip, &ipc->ClientIPAddress) == 0)
		{
			// Create a response since a request for its own IP address have received
			if (FUNC6(sender_mac))
			{
				UCHAR tmp[14 + sizeof(ARPV4_HEADER)];
				ARPV4_HEADER *arp = (ARPV4_HEADER *)(tmp + 14);

				FUNC1(tmp + 0, sender_mac, 6);
				FUNC1(tmp + 6, ipc->MacAddress, 6);
				FUNC8(tmp + 12, MAC_PROTO_ARPV4);

				arp->HardwareType = FUNC2(ARP_HARDWARE_TYPE_ETHERNET);
				arp->ProtocolType = FUNC2(MAC_PROTO_IPV4);
				arp->HardwareSize = 6;
				arp->ProtocolSize = 4;
				arp->Operation = FUNC2(ARP_OPERATION_RESPONSE);

				FUNC1(arp->SrcAddress, ipc->MacAddress, 6);
				arp->SrcIP = FUNC5(&ipc->ClientIPAddress);

				FUNC1(arp->TargetAddress, sender_mac, 6);
				arp->TargetIP = FUNC5(&sender_ip);

				FUNC4(ipc, tmp, sizeof(tmp));
			}
		}
	}
}