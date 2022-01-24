#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int HardwareSize; int ProtocolSize; int /*<<< orphan*/  Operation; int /*<<< orphan*/  SrcAddress; int /*<<< orphan*/  ProtocolType; int /*<<< orphan*/  HardwareType; } ;
struct TYPE_7__ {TYPE_3__* ARPv4Header; } ;
struct TYPE_8__ {int /*<<< orphan*/  MacAddressSrc; TYPE_1__ L3; } ;
typedef  TYPE_2__ PKT ;
typedef  int /*<<< orphan*/  L3IF ;
typedef  TYPE_3__ ARPV4_HEADER ;

/* Variables and functions */
 int ARP_HARDWARE_TYPE_ETHERNET ; 
#define  ARP_OPERATION_REQUEST 129 
#define  ARP_OPERATION_RESPONSE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int MAC_PROTO_IPV4 ; 

void FUNC4(L3IF *f, PKT *p)
{
	ARPV4_HEADER *a;
	// Validate arguments
	if (f == NULL || p == NULL)
	{
		return;
	}

	a = p->L3.ARPv4Header;

	if (FUNC1(a->HardwareType) != ARP_HARDWARE_TYPE_ETHERNET ||
		FUNC1(a->ProtocolType) != MAC_PROTO_IPV4 ||
		a->HardwareSize != 6 || a->ProtocolSize != 4)
	{
		return;
	}
	if (FUNC0(a->SrcAddress, p->MacAddressSrc, 6) != 0)
	{
		return;
	}

	switch (FUNC1(a->Operation))
	{
	case ARP_OPERATION_REQUEST:
		// ARP request arrives
		FUNC2(f, p);
		break;

	case ARP_OPERATION_RESPONSE:
		// ARP response arrives
		FUNC3(f, p);
		break;
	}
}