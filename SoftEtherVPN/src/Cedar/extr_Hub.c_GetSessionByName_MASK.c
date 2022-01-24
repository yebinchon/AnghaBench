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
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  SessionList; } ;
struct TYPE_6__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

SESSION *FUNC6(HUB *hub, char *name)
{
	// Validate arguments
	if (hub == NULL || name == NULL)
	{
		return NULL;
	}

	FUNC3(hub->SessionList);
	{
		UINT i;
		for (i = 0;i < FUNC2(hub->SessionList);i++)
		{
			SESSION *s = FUNC1(hub->SessionList, i);
			if (FUNC4(s->Name, name) == 0)
			{
				// Found
				FUNC0(s->ref);
				FUNC5(hub->SessionList);
				return s;
			}
		}
	}
	FUNC5(hub->SessionList);

	return NULL;
}