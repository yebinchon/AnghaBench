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
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/ * HubCreateHistoryList; } ;
struct TYPE_8__ {scalar_t__ CreatedTime; } ;
typedef  TYPE_1__ SERVER_HUB_CREATE_HISTORY ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ TICKET_EXPIRES ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(SERVER *s)
{
	UINT i;
	LIST *o;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC5(s->HubCreateHistoryList);
	{
		o = FUNC6(NULL);

		for (i = 0;i < FUNC4(s->HubCreateHistoryList);i++)
		{
			SERVER_HUB_CREATE_HISTORY *h = FUNC3(s->HubCreateHistoryList, i);

			if ((h->CreatedTime + ((UINT64)TICKET_EXPIRES)) <= FUNC8())
			{
				// Expired
				FUNC0(o, h);
			}
		}

		for (i = 0;i < FUNC4(o);i++)
		{
			SERVER_HUB_CREATE_HISTORY *h = FUNC3(o, i);

			FUNC1(s->HubCreateHistoryList, h);

			FUNC2(h);
		}

		FUNC7(o);
	}
	FUNC9(s->HubCreateHistoryList);
}