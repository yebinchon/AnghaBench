#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  NatTableForRecv; int /*<<< orphan*/  NatTableForSend; int /*<<< orphan*/  v; } ;
struct TYPE_7__ {int Protocol; int /*<<< orphan*/  Id; int /*<<< orphan*/  Status; int /*<<< orphan*/  LastSeq; int /*<<< orphan*/  LastAck; int /*<<< orphan*/  SrcPort; int /*<<< orphan*/  SrcIp; int /*<<< orphan*/  DestPort; int /*<<< orphan*/  DestIp; } ;
typedef  TYPE_1__ NATIVE_NAT_ENTRY ;
typedef  TYPE_2__ NATIVE_NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
#define  NAT_ICMP 130 
#define  NAT_TCP 129 
 int /*<<< orphan*/  NAT_TCP_CONNECTING ; 
#define  NAT_UDP 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TCP_ACK ; 
 int TCP_RST ; 

void FUNC5(NATIVE_NAT *t, NATIVE_NAT_ENTRY *e)
{
	// Validate arguments
	if (t == NULL || e == NULL)
	{
		return;
	}

	switch (e->Protocol)
	{
	case NAT_TCP:
		// Send a RST to the client side
		FUNC4(t->v, e->DestIp, e->DestPort, e->SrcIp, e->SrcPort,
			e->LastAck, e->LastSeq + (e->Status == NAT_TCP_CONNECTING ? 1 : 0), TCP_RST | TCP_ACK, 0, 0, NULL, 0);

		FUNC3(t->v, "LH_NAT_TCP_DELETED", e->Id);
		break;

	case NAT_UDP:
		FUNC3(t->v, "LH_NAT_UDP_DELETED", e->Id);
		break;

	case NAT_ICMP:
		FUNC0("NAT ICMP %u Deleted.\n", e->Id);
		break;
	}

	FUNC1(t->NatTableForSend, e);
	FUNC1(t->NatTableForRecv, e);

	FUNC2(e);
}