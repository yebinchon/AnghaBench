#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * Policy; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ USERGROUP ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_1__* Group; int /*<<< orphan*/ * Policy; } ;
typedef  TYPE_2__ USER ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  HUB ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

POLICY *FUNC9(HUB *h, char *username)
{
	POLICY *ret = NULL;
	// Validate arguments
	if (h == NULL || username == NULL)
	{
		return NULL;
	}

	FUNC1(h);
	{
		USER *u;
		u = FUNC0(h, username);
		if (u)
		{
			USERGROUP *g = NULL;
			FUNC5(u->lock);
			{
				if (u->Policy != NULL)
				{
					ret = FUNC4(u->Policy);
				}

				g = u->Group;

				if (g != NULL)
				{
					FUNC3(g->ref);
				}
			}
			FUNC8(u->lock);

			FUNC7(u);
			u = NULL;

			if (ret == NULL)
			{
				if (g != NULL)
				{
					FUNC5(g->lock);
					{
						ret = FUNC4(g->Policy);
					}
					FUNC8(g->lock);
				}
			}

			if (g != NULL)
			{
				FUNC6(g);
			}
		}
	}
	FUNC2(h);

	return ret;
}