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
struct TYPE_4__ {int /*<<< orphan*/  TubeForDisconnect; int /*<<< orphan*/  Cedar; int /*<<< orphan*/ * SockEvent; int /*<<< orphan*/ * Ipc; int /*<<< orphan*/  Thread; } ;
typedef  TYPE_1__ IPC_ASYNC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(IPC_ASYNC *a)
{
	// Validate arguments
	if (a == NULL)
	{
		return;
	}

	FUNC6(a->TubeForDisconnect);
	FUNC7(a->Thread, INFINITE);
	FUNC4(a->Thread);

	if (a->Ipc != NULL)
	{
		FUNC1(a->Ipc);
		a->Ipc = NULL;
	}

	if (a->SockEvent != NULL)
	{
		FUNC3(a->SockEvent);
	}

	FUNC2(a->Cedar);

	FUNC5(a->TubeForDisconnect);
	FUNC0(a);
}