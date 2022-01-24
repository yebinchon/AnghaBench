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
typedef  TYPE_2__ USERGROUP ;
struct TYPE_11__ {TYPE_1__* HubDb; } ;
struct TYPE_9__ {int /*<<< orphan*/  GroupList; } ;
typedef  TYPE_3__ HUB ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_GROUPS ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

bool FUNC5(HUB *h, USERGROUP *g)
{
	// Validate arguments
	if (h == NULL || g == NULL || FUNC4(h))
	{
		return false;
	}

	if (FUNC3(h->HubDb->GroupList) >= MAX_GROUPS)
	{
		return false;
	}

	if (FUNC0(h, g->Name) != false)
	{
		return false;
	}

	FUNC2(h->HubDb->GroupList, g);
	FUNC1(g->ref);

	return true;
}