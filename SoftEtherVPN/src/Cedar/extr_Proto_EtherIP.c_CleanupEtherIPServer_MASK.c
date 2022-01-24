#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  SendPacketList; int /*<<< orphan*/ * Ipc; int /*<<< orphan*/ * IpcConnectThread; } ;
typedef  TYPE_1__ ETHERIP_SERVER ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(ETHERIP_SERVER *s)
{
	UINT i;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC1(s, "LE_STOP");

	if (s->IpcConnectThread != NULL)
	{
		FUNC10(s->IpcConnectThread);
	}

	if (s->Ipc != NULL)
	{
		FUNC4(s->Ipc);
	}

	for (i = 0;i < FUNC6(s->SendPacketList);i++)
	{
		BLOCK *b = FUNC5(s->SendPacketList, i);

		FUNC3(b);
	}

	FUNC8(s->SendPacketList);

	FUNC9(s->SockEvent);

	FUNC7(s->Cedar);

	FUNC0(s->Lock);

	FUNC2(s);
}