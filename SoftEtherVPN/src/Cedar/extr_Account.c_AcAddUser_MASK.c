#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  Name; } ;
typedef  TYPE_2__ USER ;
struct TYPE_11__ {TYPE_1__* HubDb; } ;
struct TYPE_9__ {int /*<<< orphan*/  UserList; } ;
typedef  TYPE_3__ HUB ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_USERS ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

bool FUNC5(HUB *h, USER *u)
{
	// Validate arguments
	if (h == NULL || u == NULL || FUNC4(h))
	{
		return false;
	}

	if (FUNC3(h->HubDb->UserList) >= MAX_USERS)
	{
		return false;
	}

	if (FUNC0(h, u->Name) != false)
	{
		return false;
	}

	FUNC2(h->HubDb->UserList, u);
	FUNC1(u->ref);

	return true;
}