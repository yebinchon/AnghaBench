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
struct TYPE_7__ {int /*<<< orphan*/  HubCreateHistoryList; } ;
struct TYPE_6__ {int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ SERVER_HUB_CREATE_HISTORY ;
typedef  TYPE_2__ SERVER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(SERVER *s, char *name)
{
	UINT i;
	bool ret = false;
	// Validate arguments
	if (s == NULL || name == NULL)
	{
		return false;
	}

	FUNC3(s);

	FUNC2(s->HubCreateHistoryList);
	{
		for (i = 0;i < FUNC1(s->HubCreateHistoryList);i++)
		{
			SERVER_HUB_CREATE_HISTORY *h = FUNC0(s->HubCreateHistoryList, i);

			if (FUNC4(h->HubName, name) == 0)
			{
				ret = true;
				break;
			}
		}
	}
	FUNC5(s->HubCreateHistoryList);

	return ret;
}