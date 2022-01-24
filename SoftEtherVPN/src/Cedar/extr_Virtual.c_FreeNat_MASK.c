#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int HaltNat; int /*<<< orphan*/  NatTable; int /*<<< orphan*/ * SockEvent; int /*<<< orphan*/ * NatThread; int /*<<< orphan*/ * NativeNat; } ;
typedef  TYPE_1__ VH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(VH *v)
{
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	// Stop the native NAT
	if (v->NativeNat != NULL)
	{
		FUNC0(v->NativeNat);
		v->NativeNat = NULL;
	}

	// Stop the NAT thread
	v->HaltNat = true;
	FUNC4(v->SockEvent);
	FUNC5(v->NatThread, INFINITE);
	FUNC3(v->NatThread);
	v->NatThread = NULL;
	FUNC2(v->SockEvent);
	v->SockEvent = NULL;

	// Release the NAT table
	FUNC1(v->NatTable);
}