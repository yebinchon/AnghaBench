#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* TubePairData; } ;
struct TYPE_4__ {int IsDisconnected; int /*<<< orphan*/  Lock; int /*<<< orphan*/  SockEvent2; int /*<<< orphan*/  SockEvent1; int /*<<< orphan*/  Event2; int /*<<< orphan*/  Event1; } ;
typedef  TYPE_2__ TUBE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(TUBE *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	if (t->TubePairData == NULL)
	{
		return;
	}

	FUNC0(t->TubePairData->Lock);
	{
		t->TubePairData->IsDisconnected = true;

		FUNC1(t->TubePairData->Event1);
		FUNC1(t->TubePairData->Event2);
		FUNC2(t->TubePairData->SockEvent1);
		FUNC2(t->TubePairData->SockEvent2);
	}
	FUNC3(t->TubePairData->Lock);
}