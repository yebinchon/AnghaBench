#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int NatT_Halt; TYPE_2__* Cedar; int /*<<< orphan*/  NatT_Lock; int /*<<< orphan*/  NatT_HaltEvent; int /*<<< orphan*/ * NatT_GetIpThread; int /*<<< orphan*/  MyPort; scalar_t__ IsInCedarPortList; int /*<<< orphan*/  UdpSock; int /*<<< orphan*/  RecvBlockQueue; } ;
typedef  TYPE_1__ UDP_ACCEL ;
struct TYPE_6__ {int /*<<< orphan*/  UdpPortList; } ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC14(UDP_ACCEL *a)
{
	// Validate arguments
	if (a == NULL)
	{
		return;
	}

	while (true)
	{
		BLOCK *b = FUNC4(a->RecvBlockQueue);

		if (b == NULL)
		{
			break;
		}

		FUNC3(b);
	}

	FUNC8(a->RecvBlockQueue);

	FUNC9(a->UdpSock);

	if (a->IsInCedarPortList)
	{
		FUNC5(a->Cedar->UdpPortList);
		{
			FUNC0(a->Cedar->UdpPortList, a->MyPort);
		}
		FUNC12(a->Cedar->UdpPortList);
	}

	// Release of NAT-T related
	a->NatT_Halt = true;
	FUNC11(a->NatT_HaltEvent);

	if (a->NatT_GetIpThread != NULL)
	{
		FUNC13(a->NatT_GetIpThread, INFINITE);
		FUNC10(a->NatT_GetIpThread);
	}

	FUNC7(a->NatT_HaltEvent);
	FUNC1(a->NatT_Lock);

	FUNC6(a->Cedar);

	FUNC2(a);
}