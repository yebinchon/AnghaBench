#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/ * HubCreateHistoryList; } ;
typedef  int /*<<< orphan*/  SERVER_HUB_CREATE_HISTORY ;
typedef  TYPE_1__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(SERVER *s)
{
	UINT i;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(s->HubCreateHistoryList);i++)
	{
		SERVER_HUB_CREATE_HISTORY *h = FUNC1(s->HubCreateHistoryList, i);

		FUNC0(h);
	}

	FUNC3(s->HubCreateHistoryList);

	s->HubCreateHistoryList = NULL;
}