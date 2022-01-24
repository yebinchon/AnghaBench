#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  Event; TYPE_1__* Queue; } ;
struct TYPE_5__ {scalar_t__ num_item; } ;
typedef  TYPE_2__ TUBE ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(TUBE *t, bool force)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	if (FUNC0(t) == false)
	{
		return;
	}

	if (force == false)
	{
		if (t->Queue->num_item == 0)
		{
			return;
		}
	}

	FUNC1(t->Event);
	FUNC2(t->SockEvent);
}