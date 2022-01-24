#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USERGROUP ;
struct TYPE_9__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * Group; } ;
typedef  TYPE_2__ USER ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* HubDb; } ;
struct TYPE_8__ {int /*<<< orphan*/  UserList; int /*<<< orphan*/  GroupList; } ;
typedef  TYPE_3__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

bool FUNC8(HUB *h, char *name)
{
	USERGROUP *g;
	UINT i;
	// Validate arguments
	if (h == NULL || name == NULL)
	{
		return false;
	}

	g = FUNC0(h, name);
	if (g == NULL)
	{
		return false;
	}

	if (FUNC1(h->HubDb->GroupList, g))
	{
		FUNC6(g);
	}

	for (i = 0;i < FUNC4(h->HubDb->UserList);i++)
	{
		USER *u = FUNC3(h->HubDb->UserList, i);
		FUNC5(u->lock);
		{
			if (u->Group == g)
			{
				FUNC2(u, NULL);
			}
		}
		FUNC7(u->lock);
	}

	FUNC6(g);

	return true;
}