#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UDPPACKET ;
struct TYPE_4__ {int Halt; int /*<<< orphan*/  Interrupts; int /*<<< orphan*/  SendPacketList; int /*<<< orphan*/  PortList; int /*<<< orphan*/  Event; int /*<<< orphan*/  Thread; } ;
typedef  TYPE_1__ UDPLISTENER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(UDPLISTENER *u)
{
	UINT i;
	// Validate arguments
	if (u == NULL)
	{
		return;
	}

	u->Halt = true;
	FUNC9(u->Event);

	FUNC10(u->Thread, INFINITE);
	FUNC8(u->Thread);
	FUNC7(u->Event);

	FUNC5(u->PortList);

	for (i = 0;i < FUNC4(u->SendPacketList);i++)
	{
		UDPPACKET *p = FUNC3(u->SendPacketList, i);

		FUNC2(p);
	}

	FUNC6(u->SendPacketList);

	FUNC1(u->Interrupts);

	FUNC0(u);
}