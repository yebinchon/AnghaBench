#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  HubCreateHistoryList; } ;
struct TYPE_8__ {int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ SERVER_HUB_CREATE_HISTORY ;
typedef  TYPE_2__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(SERVER *s, char *name)
{
	UINT i;
	// Validate arguments
	if (s == NULL || name == NULL)
	{
		return;
	}

	FUNC4(s->HubCreateHistoryList);
	{
		SERVER_HUB_CREATE_HISTORY *hh = NULL;
		for (i = 0;i < FUNC3(s->HubCreateHistoryList);i++)
		{
			SERVER_HUB_CREATE_HISTORY *h = FUNC2(s->HubCreateHistoryList, i);

			if (FUNC6(h->HubName, name) == 0)
			{
				FUNC0(s->HubCreateHistoryList, h);
				FUNC1(h);
				break;
			}
		}
	}
	FUNC7(s->HubCreateHistoryList);

	FUNC5(s);
}