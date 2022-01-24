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
struct TYPE_4__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  TubePairData; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  Event; int /*<<< orphan*/  Queue; } ;
typedef  int /*<<< orphan*/  TUBEDATA ;
typedef  TYPE_1__ TUBE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(TUBE *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	while (true)
	{
		TUBEDATA *d = FUNC3(t->Queue);
		if (d == NULL)
		{
			break;
		}

		FUNC2(d);
	}

	FUNC5(t->Queue);
	FUNC4(t->Event);
	FUNC6(t->SockEvent);

	FUNC7(t->TubePairData);

	FUNC0(t->Lock);

	FUNC1(t);
}