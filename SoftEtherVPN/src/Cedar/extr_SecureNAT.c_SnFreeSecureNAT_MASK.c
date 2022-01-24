#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Virtual; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_3__* Nat; int /*<<< orphan*/  Session; } ;
typedef  TYPE_1__ SNAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(SNAT *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	// Stop the session 
	FUNC4(s->Session);
	FUNC3(s->Session);

	// Virtual machine release
	FUNC5(s->Nat->Virtual);

	// NAT release
	FUNC2(s->Nat);

	FUNC0(s->lock);

	FUNC1(s);
}