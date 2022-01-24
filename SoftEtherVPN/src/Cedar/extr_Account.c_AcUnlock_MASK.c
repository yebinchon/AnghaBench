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
struct TYPE_6__ {TYPE_1__* HubDb; } ;
struct TYPE_5__ {int /*<<< orphan*/  GroupList; int /*<<< orphan*/  UserList; } ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(HUB *h)
{
	// Validate arguments
	if (h == NULL)
	{
		return;
	}
	if (FUNC0(h))
	{
		return;
	}

	// Unlock group list and user list
	FUNC1(h->HubDb->UserList);
	FUNC1(h->HubDb->GroupList);
}