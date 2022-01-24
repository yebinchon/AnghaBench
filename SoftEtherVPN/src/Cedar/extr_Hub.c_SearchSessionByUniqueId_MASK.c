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
struct TYPE_6__ {scalar_t__ UniqueId; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

SESSION *FUNC2(HUB *h, UINT id)
{
	UINT i;
	// Validate arguments
	if (h == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(h->SessionList);i++)
	{
		SESSION *s = FUNC0(h->SessionList, i);

		if (s->UniqueId == id)
		{
			return s;
		}
	}

	return NULL;
}