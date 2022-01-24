#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ num_item; } ;
struct TYPE_5__ {int /*<<< orphan*/  FlushEvent; TYPE_3__* RecordQueue; } ;
typedef  TYPE_1__ LOG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(LOG *g)
{
	// Validate arguments
	if (g == NULL)
	{
		return;
	}

	while (true)
	{
		UINT num;
		FUNC0(g->RecordQueue);
		{
			num = g->RecordQueue->num_item;
		}
		FUNC1(g->RecordQueue);

		if (num == 0)
		{
			break;
		}

		FUNC2(g->FlushEvent, 100);
	}
}