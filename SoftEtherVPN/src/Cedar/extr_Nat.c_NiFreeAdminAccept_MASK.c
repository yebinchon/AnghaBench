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
struct TYPE_3__ {int Halt; int /*<<< orphan*/  AdminListenSock; int /*<<< orphan*/  AdminAcceptThread; int /*<<< orphan*/  HaltEvent; } ;
typedef  TYPE_1__ NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(NAT *n)
{
	// Validate arguments
	if (n == NULL)
	{
		return;
	}

	n->Halt = true;
	FUNC0(n->AdminListenSock);
	FUNC3(n->HaltEvent);

	while (true)
	{
		if (FUNC4(n->AdminAcceptThread, 1000) == false)
		{
			FUNC0(n->AdminListenSock);
		}
		else
		{
			break;
		}
	}
	FUNC2(n->AdminAcceptThread);

	FUNC1(n->AdminListenSock);
}