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
struct TYPE_3__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/ * Listener; int /*<<< orphan*/  Port; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  Cedar; scalar_t__* EnablePtr; } ;
typedef  TYPE_1__ DYNAMIC_LISTENER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WHERE ; 

void FUNC5(DYNAMIC_LISTENER *d)
{
	// Validate arguments
	if (d == NULL)
	{
		return;
	}

	FUNC0(d->Lock);
	{
		// Change the state
		if (*d->EnablePtr)
		{
			if (d->Listener == NULL)
			{
				// Create a listener
				WHERE;
				d->Listener = FUNC1(d->Cedar, d->Protocol, d->Port);
			}
		}
		else
		{
			// Stop the listener
			if (d->Listener != NULL)
			{
				WHERE;
				FUNC3(d->Listener);
				FUNC2(d->Listener);
				d->Listener = NULL;
			}
		}
	}
	FUNC4(d->Lock);
}