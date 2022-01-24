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
struct TYPE_4__ {int HaltNat; int /*<<< orphan*/  NativeNat; int /*<<< orphan*/  NatThread; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  NatTable; } ;
typedef  TYPE_1__ VH ;

/* Variables and functions */
 int /*<<< orphan*/  CompareNat ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  NatThread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(VH *v)
{
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	// Create a NAT table
	v->NatTable = FUNC1(CompareNat);

	// Create a socket event
	v->SockEvent = FUNC3();

	// Create the NAT thread
	v->HaltNat = false;
	v->NatThread = FUNC4(NatThread, (void *)v);
	FUNC5(v->NatThread);

	if (FUNC0())
	{
		// Start a native NAT if access to the layer 2 Ethernet is supported
		v->NativeNat = FUNC2(v);
	}
}