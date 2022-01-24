#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* Switch; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ L3SW ;
typedef  TYPE_2__ L3IF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(L3IF *f)
{
	L3SW *s;
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	s = f->Switch;

	// Lock the entire switch in the middle of the polling process
	FUNC5(s->lock);
	{
		// Beacon transmission
		FUNC3(f);

		// Process the IP queue
		FUNC4(f);

		// Clear old ARP table entries
		FUNC0(f);

		// Polling ARP resolution waiting list
		FUNC2(f);

		// Clear the IP waiting list
		FUNC1(f);
	}
	FUNC6(s->lock);
}