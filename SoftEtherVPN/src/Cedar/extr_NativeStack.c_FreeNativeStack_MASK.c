#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ServerAddress; } ;
struct TYPE_6__ {int Halt; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  Sock2; int /*<<< orphan*/  Sock1; int /*<<< orphan*/  Cancel; int /*<<< orphan*/ * Ipc; int /*<<< orphan*/  Eth; int /*<<< orphan*/  MainThread; TYPE_3__ CurrentDhcpOptionList; } ;
typedef  TYPE_1__ NATIVE_STACK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC15(NATIVE_STACK *a)
{
	// Validate arguments
	if (a == NULL)
	{
		return;
	}

	if (a->Ipc != NULL && FUNC6(&a->CurrentDhcpOptionList, sizeof(a->CurrentDhcpOptionList)) == false)
	{
		IP dhcp_server;

		FUNC13(&dhcp_server, a->CurrentDhcpOptionList.ServerAddress);

		FUNC5(a->Ipc, &dhcp_server);
		FUNC12(200);
	}

	a->Halt = true;
	FUNC0(a->Cancel);
	FUNC2(a->Sock1);
	FUNC2(a->Sock2);

	FUNC14(a->MainThread, INFINITE);

	FUNC11(a->MainThread);

	FUNC1(a->Eth);
	FUNC4(a->Ipc);

	FUNC7(a);

	FUNC8(a->Cancel);

	FUNC10(a->Sock1);
	FUNC10(a->Sock2);

	FUNC9(a->Cedar);

	FUNC3(a);
}