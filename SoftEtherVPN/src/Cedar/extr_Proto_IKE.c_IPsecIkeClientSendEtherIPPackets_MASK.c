#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  SendPacketList; } ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  int /*<<< orphan*/  IKE_CLIENT ;
typedef  TYPE_1__ ETHERIP_SERVER ;
typedef  TYPE_2__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  IPSEC_IP_PROTO_ETHERIP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(IKE_SERVER *ike, IKE_CLIENT *c, ETHERIP_SERVER *s)
{
	UINT i;
	// Validate arguments
	if (ike == NULL || c == NULL || s == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC4(s->SendPacketList);i++)
	{
		BLOCK *b = FUNC3(s->SendPacketList, i);

		// Packet transmission
		FUNC2(ike, c, b->Buf, b->Size, IPSEC_IP_PROTO_ETHERIP);

		FUNC1(b);
	}

	FUNC0(s->SendPacketList);
}