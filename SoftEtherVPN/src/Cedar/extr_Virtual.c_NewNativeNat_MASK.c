#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* Cancel; } ;
typedef  TYPE_2__ VH ;
struct TYPE_11__ {int /*<<< orphan*/  Thread; void* NatTableForRecv; void* NatTableForSend; int /*<<< orphan*/  HaltTube3; int /*<<< orphan*/  HaltTube2; int /*<<< orphan*/  HaltEvent; void* CancelLock; void* Lock; void* RecvQueue; void* SendQueue; int /*<<< orphan*/  LastInterfaceIndex; TYPE_1__* Cancel; TYPE_2__* v; } ;
struct TYPE_9__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_3__ NATIVE_NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CmpNativeNatTableForRecv ; 
 int /*<<< orphan*/  CmpNativeNatTableForSend ; 
 int /*<<< orphan*/  GetHashNativeNatTableForRecv ; 
 int /*<<< orphan*/  GetHashNativeNatTableForSend ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  NativeNatThread ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC3 () ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (int) ; 

NATIVE_NAT *FUNC9(VH *v)
{
	NATIVE_NAT *t;
	// Validate arguments
	if (v == NULL)
	{
		return NULL;
	}

	t = FUNC8(sizeof(NATIVE_NAT));

	t->v = v;

	t->Cancel = v->Cancel;
	FUNC0(t->Cancel->ref);

	// Data structure initialization
	t->LastInterfaceIndex = INFINITE;
	t->SendQueue = FUNC4();
	t->RecvQueue = FUNC4();
	FUNC7(t);

	t->Lock = FUNC3();

	t->CancelLock = FUNC3();

	t->HaltEvent = FUNC1();

	FUNC6(&t->HaltTube2, &t->HaltTube3, 0);

	// Create a NAT table
	t->NatTableForSend = FUNC2(GetHashNativeNatTableForSend, CmpNativeNatTableForSend, 11, true);
	t->NatTableForRecv = FUNC2(GetHashNativeNatTableForRecv, CmpNativeNatTableForRecv, 11, true);

	t->Thread = FUNC5(NativeNatThread, t);

	return t;
}