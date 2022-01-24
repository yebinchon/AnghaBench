#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/ * SendControlPacketList; } ;
struct TYPE_8__ {scalar_t__ PacketId; } ;
typedef  TYPE_1__ OPENVPN_CONTROL_PACKET ;
typedef  TYPE_2__ OPENVPN_CHANNEL ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(OPENVPN_CHANNEL *c, UINT num_acks, UINT *acks)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (c == NULL || num_acks == 0)
	{
		return;
	}

	o = FUNC4(NULL);
	for (i = 0;i < num_acks;i++)
	{
		UINT ack = acks[i];
		UINT j;

		for (j = 0;j < FUNC3(c->SendControlPacketList);j++)
		{
			OPENVPN_CONTROL_PACKET *p = FUNC2(c->SendControlPacketList, j);

			if (p->PacketId == ack)
			{
				FUNC0(o, p);
			}
		}
	}

	for (i = 0;i < FUNC3(o);i++)
	{
		OPENVPN_CONTROL_PACKET *p = FUNC2(o, i);

		FUNC1(c->SendControlPacketList, p);

		FUNC5(p);
	}

	FUNC6(o);
}