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
struct TYPE_4__ {int /*<<< orphan*/  Traffic; struct TYPE_4__* Policy; int /*<<< orphan*/  AuthData; int /*<<< orphan*/  AuthType; int /*<<< orphan*/ * Group; struct TYPE_4__* GroupName; struct TYPE_4__* Note; struct TYPE_4__* RealName; struct TYPE_4__* Name; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ USER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(USER *u)
{
	// Validate arguments
	if (u == NULL)
	{
		return;
	}

	FUNC0(u->lock);
	FUNC1(u->Name);
	FUNC1(u->RealName);
	FUNC1(u->Note);
	FUNC1(u->GroupName);
	if (u->Group != NULL)
	{
		FUNC4(u->Group);
	}

	// Free authentication data
	FUNC2(u->AuthType, u->AuthData);

	if (u->Policy)
	{
		// Free policy data
		FUNC1(u->Policy);
	}

	FUNC3(u->Traffic);

	FUNC1(u);
}