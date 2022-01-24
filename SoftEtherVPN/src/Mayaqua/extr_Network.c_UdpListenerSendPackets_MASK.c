#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UDPPACKET ;
struct TYPE_3__ {int /*<<< orphan*/  Event; int /*<<< orphan*/  SendPacketList; } ;
typedef  TYPE_1__ UDPLISTENER ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(UDPLISTENER *u, LIST *packet_list)
{
	UINT num = 0;
	// Validate arguments
	if (u == NULL || packet_list == NULL)
	{
		return;
	}

	FUNC3(u->SendPacketList);
	{
		UINT i;

		num = FUNC2(packet_list);

		for (i = 0;i < FUNC2(packet_list);i++)
		{
			UDPPACKET *p = FUNC1(packet_list, i);

			FUNC0(u->SendPacketList, p);
		}
	}
	FUNC5(u->SendPacketList);

	if (num >= 1)
	{
		FUNC4(u->Event);
	}
}