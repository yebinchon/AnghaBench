#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  AdminList; scalar_t__ Halt; TYPE_1__* AdminListenSock; int /*<<< orphan*/  HaltEvent; } ;
struct TYPE_14__ {TYPE_1__* Sock; int /*<<< orphan*/ * Thread; TYPE_3__* Nat; } ;
struct TYPE_13__ {int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ SOCK ;
typedef  TYPE_2__ NAT_ADMIN ;
typedef  TYPE_3__ NAT ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_NAT_ADMIN_PORT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAT_ADMIN_PORT_LISTEN_INTERVAL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  NiAdminThread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (int) ; 

void FUNC19(THREAD *thread, void *param)
{
	NAT *n = (NAT *)param;
	SOCK *a;
	UINT i;
	bool b = false;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	// Initialize the management list
	n->AdminList = FUNC8(NULL);

	while (true)
	{
		a = FUNC6(DEFAULT_NAT_ADMIN_PORT);
		if (b == false)
		{
			b = true;
			FUNC10(thread);
		}
		if (a != NULL)
		{
			break;
		}

		FUNC15(n->HaltEvent, NAT_ADMIN_PORT_LISTEN_INTERVAL);
		if (n->Halt)
		{
			return;
		}
	}

	n->AdminListenSock = a;
	FUNC1(a->ref);

	// Waiting
	while (true)
	{
		SOCK *s = FUNC0(a);
		THREAD *t;
		NAT_ADMIN *admin;
		if (s == NULL)
		{
			break;
		}
		if (n->Halt)
		{
			FUNC12(s);
			break;
		}

		admin = FUNC18(sizeof(NAT_ADMIN));
		admin->Nat = n;
		admin->Sock = s;
		t = FUNC9(NiAdminThread, admin);
		FUNC17(t);
		FUNC13(t);
	}

	// Disconnect all management connections
	FUNC7(n->AdminList);
	{
		for (i = 0;i < FUNC5(n->AdminList);i++)
		{
			NAT_ADMIN *a = FUNC4(n->AdminList, i);
			FUNC2(a->Sock);
			FUNC16(a->Thread, INFINITE);
			FUNC13(a->Thread);
			FUNC12(a->Sock);
			FUNC3(a);
		}
	}
	FUNC14(n->AdminList);

	FUNC11(n->AdminList);

	FUNC12(a);
}