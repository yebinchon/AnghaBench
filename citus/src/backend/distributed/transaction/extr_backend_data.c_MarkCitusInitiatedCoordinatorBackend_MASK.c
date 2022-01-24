#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int initiatorNodeIdentifier; int transactionOriginator; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; TYPE_1__ citusBackend; } ;

/* Variables and functions */
 int FUNC0 () ; 
 TYPE_2__* MyBackendData ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	/*
	 * GetLocalGroupId may throw exception which can cause leaving spin lock
	 * unreleased. Calling GetLocalGroupId function before the lock to avoid this.
	 */
	int localGroupId = FUNC0();

	FUNC1(&MyBackendData->mutex);

	MyBackendData->citusBackend.initiatorNodeIdentifier = localGroupId;
	MyBackendData->citusBackend.transactionOriginator = true;

	FUNC2(&MyBackendData->mutex);
}