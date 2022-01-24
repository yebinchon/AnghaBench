#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  scalar_t__ uint32_t ;
typedef  TYPE_2__* purgeable_q_t ;
typedef  enum purgeable_q_type { ____Placeholder_purgeable_q_type } purgeable_q_type ;
struct TYPE_11__ {scalar_t__ debug_count_objects; int /*<<< orphan*/ * objq; } ;
struct TYPE_10__ {scalar_t__ purgable; scalar_t__ purgeable_when_ripe; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MACH_VM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUM_VOLATILE_GROUPS ; 
 int /*<<< orphan*/  OBJECT_PURGE_ALL ; 
 int PURGEABLE_Q_TYPE_MAX ; 
 int PURGEABLE_Q_TYPE_OBSOLETE ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 scalar_t__ VM_PURGABLE_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  available_for_purge ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* purgeable_queues ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__* FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_purgeable_queue_lock ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

void
FUNC13(void)
{
	enum purgeable_q_type i;
	int             group;
	vm_object_t     object;
	unsigned int	purged_count;
	uint32_t	collisions;

	purged_count = 0;
	collisions = 0;

restart:
	FUNC3(&vm_purgeable_queue_lock);
	/* Cycle through all queues */
	for (i = PURGEABLE_Q_TYPE_OBSOLETE; i < PURGEABLE_Q_TYPE_MAX; i++) {
		purgeable_q_t   queue;

		queue = &purgeable_queues[i];

		/*
		 * Look through all groups, starting from the lowest. If
		 * we find an object in that group, try to lock it (this can
		 * fail). If locking is successful, we can drop the queue
		 * lock, remove a token and then purge the object.
		 */
		for (group = 0; group < NUM_VOLATILE_GROUPS; group++) {
			while (!FUNC6(&queue->objq[group])) {
				object = FUNC11(queue, group, FALSE);
				if (object == VM_OBJECT_NULL) {
					FUNC4(&vm_purgeable_queue_lock);
					FUNC5(collisions++);
					goto restart;
				}

				FUNC4(&vm_purgeable_queue_lock);
				
				/* Lock the page queue here so we don't hold it
				 * over the whole, legthy operation */
				if (object->purgeable_when_ripe) {
					FUNC9();
					FUNC12(queue);
					FUNC10();
				}
				
				(void) FUNC7(object, 0);
				FUNC2(object->purgable == VM_PURGABLE_EMPTY);
				/* no change in purgeable accounting */

				FUNC8(object);
				purged_count++;
				goto restart;
			}
			FUNC2(queue->debug_count_objects >= 0);
		}
	}
	FUNC0((FUNC1(DBG_MACH_VM, OBJECT_PURGE_ALL)),
			      purged_count, /* # of purged objects */
			      0,
			      available_for_purge,
			      0,
			      0);
	FUNC4(&vm_purgeable_queue_lock);
	return;
}