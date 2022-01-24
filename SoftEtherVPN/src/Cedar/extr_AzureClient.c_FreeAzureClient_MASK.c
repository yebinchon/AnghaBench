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
struct TYPE_8__ {int Halt; int /*<<< orphan*/  Lock; int /*<<< orphan*/  Event; int /*<<< orphan*/  MainThread; TYPE_1__* CurrentSock; } ;
struct TYPE_7__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ AZURE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(AZURE_CLIENT *ac)
{
	SOCK *disconnect_sock = NULL;
	// Validate arguments
	if (ac == NULL)
	{
		return;
	}

	ac->Halt = true;

	FUNC4(ac->Lock);
	{
		if (ac->CurrentSock != NULL)
		{
			disconnect_sock = ac->CurrentSock;

			FUNC0(disconnect_sock->ref);
		}
	}
	FUNC9(ac->Lock);

	if (disconnect_sock != NULL)
	{
		FUNC2(disconnect_sock);
		FUNC6(disconnect_sock);
	}

	FUNC8(ac->Event);

	// Stop main thread
	FUNC10(ac->MainThread, INFINITE);
	FUNC7(ac->MainThread);

	FUNC5(ac->Event);

	FUNC1(ac->Lock);

	FUNC3(ac);
}