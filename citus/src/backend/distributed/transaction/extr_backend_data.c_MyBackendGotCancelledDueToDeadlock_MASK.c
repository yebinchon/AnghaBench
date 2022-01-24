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
struct TYPE_3__ {int cancelledDueToDeadlock; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* MyBackendData ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(void)
{
	bool cancelledDueToDeadlock = false;

	/* backend might not have used citus yet and thus not initialized backend data */
	if (!MyBackendData)
	{
		return false;
	}

	FUNC1(&MyBackendData->mutex);

	if (FUNC0(MyBackendData))
	{
		cancelledDueToDeadlock = MyBackendData->cancelledDueToDeadlock;
	}

	FUNC2(&MyBackendData->mutex);

	return cancelledDueToDeadlock;
}