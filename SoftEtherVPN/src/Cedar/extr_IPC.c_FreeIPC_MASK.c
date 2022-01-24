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
struct TYPE_4__ {int /*<<< orphan*/  IPv4ReceivedQueue; int /*<<< orphan*/  ArpTable; int /*<<< orphan*/  Interrupt; int /*<<< orphan*/  Cedar; struct TYPE_4__* Policy; int /*<<< orphan*/  Sock; int /*<<< orphan*/  FlushList; } ;
typedef  int /*<<< orphan*/  IPC_ARP ;
typedef  TYPE_1__ IPC ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(IPC *ipc)
{
	UINT i;
	// Validate arguments
	if (ipc == NULL)
	{
		return;
	}

	FUNC4(ipc->FlushList);

	FUNC0(ipc->Sock);
	FUNC12(ipc->Sock);

	if (ipc->Policy != NULL)
	{
		FUNC1(ipc->Policy);
	}

	FUNC9(ipc->Cedar);

	FUNC3(ipc->Interrupt);

	for (i = 0;i < FUNC8(ipc->ArpTable);i++)
	{
		IPC_ARP *a = FUNC7(ipc->ArpTable, i);
		FUNC6(a);
	}

	FUNC10(ipc->ArpTable);

	while (true)
	{
		BLOCK *b = FUNC5(ipc->IPv4ReceivedQueue);
		if (b == NULL)
		{
			break;
		}

		FUNC2(b);
	}

	FUNC11(ipc->IPv4ReceivedQueue);

	FUNC1(ipc);
}