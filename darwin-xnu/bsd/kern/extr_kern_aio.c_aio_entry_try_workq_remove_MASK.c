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
typedef  int /*<<< orphan*/  aio_workq_t ;
struct TYPE_6__ {int /*<<< orphan*/ * tqe_prev; } ;
struct TYPE_7__ {TYPE_1__ aio_workq_link; } ;
typedef  TYPE_2__ aio_workq_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(aio_workq_entry *entryp)
{	
	/* Can only be cancelled if it's still on a work queue */
	if (entryp->aio_workq_link.tqe_prev != NULL) {
		aio_workq_t queue;

		/* Will have to check again under the lock */
		queue = FUNC0(entryp);
		FUNC1(queue);
		if (entryp->aio_workq_link.tqe_prev != NULL) {
			FUNC2(queue, entryp);
			FUNC3(queue);
			return 1;
		}  else {
			FUNC3(queue);
		}
	}

	return 0;
}