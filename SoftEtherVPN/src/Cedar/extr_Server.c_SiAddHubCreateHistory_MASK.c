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
struct TYPE_8__ {int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ SERVER_HUB_CREATE_HISTORY ;
typedef  TYPE_2__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int) ; 

void FUNC10(SERVER *s, char *name)
{
	UINT i;
	// Validate arguments
	if (s == NULL || name == NULL)
	{
		return;
	}

	FUNC3(s->HubCreateHistoryList);
	{
		SERVER_HUB_CREATE_HISTORY *hh = NULL;
		for (i = 0;i < FUNC2(s->HubCreateHistoryList);i++)
		{
			SERVER_HUB_CREATE_HISTORY *h = FUNC1(s->HubCreateHistoryList, i);

			if (FUNC5(h->HubName, name) == 0)
			{
				hh = h;
				break;
			}
		}

		if (hh == NULL)
		{
			hh = FUNC9(sizeof(SERVER_HUB_CREATE_HISTORY));
			FUNC6(hh->HubName, sizeof(hh->HubName), name);

			FUNC0(s->HubCreateHistoryList, hh);
		}

		hh->CreatedTime = FUNC7();
	}
	FUNC8(s->HubCreateHistoryList);

	FUNC4(s);
}