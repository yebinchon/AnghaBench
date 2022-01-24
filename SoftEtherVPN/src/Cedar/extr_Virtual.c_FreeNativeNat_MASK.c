#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  AllList; } ;
struct TYPE_14__ {int Halt; TYPE_7__* NatTableForRecv; TYPE_7__* NatTableForSend; int /*<<< orphan*/  Cancel; int /*<<< orphan*/  SendQueue; int /*<<< orphan*/  RecvQueue; TYPE_1__* HaltTube3; TYPE_1__* HaltTube2; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  CancelLock; int /*<<< orphan*/  Lock; int /*<<< orphan*/  Thread; TYPE_1__* HaltTube; } ;
struct TYPE_13__ {int /*<<< orphan*/  Ref; } ;
typedef  TYPE_1__ TUBE ;
typedef  TYPE_2__ NATIVE_NAT_ENTRY ;
typedef  TYPE_2__ NATIVE_NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC20(NATIVE_NAT *t)
{
	TUBE *tube;
	UINT i;
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	t->Halt = true;

	FUNC5(t->Lock);
	{
		tube = t->HaltTube;

		if (tube != NULL)
		{
			FUNC0(tube->Ref);
		}
	}
	FUNC18(t->Lock);

	if (tube != NULL)
	{
		FUNC17(tube, true);

		FUNC15(100);

		FUNC16(tube);

		FUNC13(tube);
	}

	FUNC16(t->HaltTube2);
	FUNC16(t->HaltTube3);

	FUNC14(t->HaltEvent);

	FUNC19(t->Thread, INFINITE);

	FUNC12(t->Thread);

	FUNC1(t->Lock);

	FUNC1(t->CancelLock);

	FUNC9(t->HaltEvent);

	FUNC13(t->HaltTube2);
	FUNC13(t->HaltTube3);

	FUNC6(t);

	FUNC11(t->RecvQueue);
	FUNC11(t->SendQueue);

	FUNC8(t->Cancel);

	// Release the NAT table
	for (i = 0;i < FUNC4(t->NatTableForSend->AllList);i++)
	{
		NATIVE_NAT_ENTRY *e = FUNC3(t->NatTableForSend->AllList, i);

		FUNC2(e);
	}

	FUNC10(t->NatTableForSend);
	FUNC10(t->NatTableForRecv);

	FUNC7(t);

	FUNC2(t);
}