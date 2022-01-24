#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* aio_workq_t ;
struct TYPE_8__ {int /*<<< orphan*/ * tqe_prev; } ;
struct TYPE_10__ {TYPE_1__ aio_workq_link; } ;
typedef  TYPE_3__ aio_workq_entry ;
struct TYPE_9__ {scalar_t__ aioq_count; int /*<<< orphan*/  aioq_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aio_workq_link ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void		
FUNC3(aio_workq_t queue, aio_workq_entry *entryp)
{
	FUNC0(queue);

	if (entryp->aio_workq_link.tqe_prev == NULL) {
		FUNC2("Trying to remove an entry from a work queue, but it is not on a queue\n");
	}
	
	FUNC1(&queue->aioq_entries, entryp, aio_workq_link);
	queue->aioq_count--;
	entryp->aio_workq_link.tqe_prev = NULL; /* Not on a workq */
	
	if (queue->aioq_count  < 0) {
		FUNC2("Negative count on a queue.\n");
	}
}