#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  MacAddress; } ;
struct TYPE_10__ {int BroadcastPacket; scalar_t__ TypeL3; int /*<<< orphan*/  PacketData; int /*<<< orphan*/  MacAddressDest; int /*<<< orphan*/  MacAddressSrc; } ;
typedef  TYPE_1__ PKT ;
typedef  TYPE_2__ L3IF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,int) ; 
 scalar_t__ L3_ARPV4 ; 
 scalar_t__ L3_IPV4 ; 

void FUNC5(L3IF *f, PKT *p)
{
	// Validate arguments
	if (f == NULL || p == NULL)
	{
		return;
	}

	// Ignore any packets except a unicast packet which is at destination
	// or a packet which I sent
	if (FUNC0(p->MacAddressSrc, f->MacAddress, 6) == 0 ||
		(p->BroadcastPacket == false && FUNC0(p->MacAddressDest, f->MacAddress, 6) != 0))
	{
		// Release the packet
		FUNC1(p->PacketData);
		FUNC2(p);
		return;
	}

	if (p->TypeL3 == L3_ARPV4)
	{
		// Received an ARP packet
		FUNC3(f, p);

		// Release the packet
		FUNC1(p->PacketData);
		FUNC2(p);
	}
	else if (p->TypeL3 == L3_IPV4)
	{
		// Received an IP packet
		FUNC4(f, p, false);
	}
	else
	{
		// Release the packet
		FUNC1(p->PacketData);
		FUNC2(p);
	}
}