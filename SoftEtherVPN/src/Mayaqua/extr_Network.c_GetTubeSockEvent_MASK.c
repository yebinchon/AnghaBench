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
struct TYPE_6__ {int /*<<< orphan*/  ref; } ;
struct TYPE_5__ {int /*<<< orphan*/  Lock; TYPE_2__* SockEvent; } ;
typedef  TYPE_1__ TUBE ;
typedef  TYPE_2__ SOCK_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

SOCK_EVENT *FUNC3(TUBE *t)
{
	SOCK_EVENT *e = NULL;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	FUNC1(t->Lock);
	{
		if (t->SockEvent != NULL)
		{
			FUNC0(t->SockEvent->ref);

			e = t->SockEvent;
		}
	}
	FUNC2(t->Lock);

	return e;
}