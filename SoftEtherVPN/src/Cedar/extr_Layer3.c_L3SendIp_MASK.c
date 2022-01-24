#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_18__ {int DstIP; } ;
struct TYPE_17__ {int SubnetMask; int IpAddress; int /*<<< orphan*/  IpWaitList; } ;
struct TYPE_16__ {int NextHopIp; TYPE_12__* Packet; scalar_t__ Expire; } ;
struct TYPE_15__ {TYPE_4__* IPv4Header; } ;
struct TYPE_14__ {scalar_t__ TypeL3; TYPE_2__* PacketData; TYPE_1__ L3; } ;
typedef  TYPE_2__ L3PACKET ;
typedef  TYPE_3__ L3IF ;
typedef  int /*<<< orphan*/  L3ARPENTRY ;
typedef  TYPE_4__ IPV4_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*) ; 
 scalar_t__ IP_WAIT_FOR_ARP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ L3_IPV4 ; 
 scalar_t__ FUNC6 () ; 

void FUNC7(L3IF *f, L3PACKET *p)
{
	L3ARPENTRY *a = NULL;
	bool broadcast = false;
	IPV4_HEADER *ip;
	bool for_me = false;
	// Validate arguments
	if (f == NULL || p == NULL)
	{
		return;
	}
	if (p->Packet->TypeL3 != L3_IPV4)
	{
		return;
	}

	ip = p->Packet->L3.IPv4Header;

	// Determining whether it's a broadcast
	if (p->NextHopIp == 0xffffffff ||
		((p->NextHopIp & f->SubnetMask) == (f->IpAddress & f->SubnetMask)) &&
		((p->NextHopIp & (~f->SubnetMask)) == (~f->SubnetMask)))
	{
		broadcast = true;
	}

	if (broadcast == false && ip->DstIP == f->IpAddress)
	{
		// me?
	}
	else if (broadcast == false)
	{
		// Examine whether the ARP entry contains this in the case of unicast
		a = FUNC3(f, p->NextHopIp);

		if (a == NULL)
		{
			// Since It is not in the ARP table,
			// insert it into the IP waiting list without sending immediately
			p->Expire = FUNC6() + IP_WAIT_FOR_ARP_TIMEOUT;

			FUNC2(f->IpWaitList, p);

			// Issue an ARP query
			FUNC4(f, p->NextHopIp);
			return;
		}
	}

	if (for_me == false)
	{
		// Send the IP packet
		FUNC5(f, a, p);
	}

	// Release the packet
	FUNC0(p->Packet->PacketData);
	FUNC1(p->Packet);
	FUNC0(p);
}