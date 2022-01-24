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
struct TYPE_4__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  Cedar; int /*<<< orphan*/ * Listener; } ;
typedef  TYPE_1__ DYNAMIC_LISTENER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(DYNAMIC_LISTENER *d)
{
	// Validate arguments
	if (d == NULL)
	{
		return;
	}

	FUNC2(d->Lock);
	{
		if (d->Listener != NULL)
		{
			FUNC5(d->Listener);
			FUNC4(d->Listener);
			d->Listener = NULL;
		}
	}
	FUNC6(d->Lock);

	FUNC3(d->Cedar);

	FUNC0(d->Lock);

	FUNC1(d);
}