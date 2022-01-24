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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ task_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  TYPE_1__* semaphore_t ;
typedef  TYPE_2__* ipc_port_t ;
struct TYPE_11__ {int /*<<< orphan*/  ip_srights; } ;
struct TYPE_10__ {scalar_t__ owner; scalar_t__ active; TYPE_2__* port; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ TASK_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  semaphore_zone ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC13(
	semaphore_t		semaphore)
{
	uint32_t collisions;
	spl_t spl_level;

	if (semaphore == NULL)
		return;

	if (FUNC4(&semaphore->ref_count) > 0) {
		return;
	}

	/*
	 * Last ref, clean up the port [if any]
	 * associated with the semaphore, destroy
	 * it (if still active) and then free
	 * the semaphore.
	 */
	ipc_port_t port = semaphore->port;

	if (FUNC0(port)) {
		FUNC1(!port->ip_srights);
		FUNC2(port);
	}

	/*
	 * Lock the semaphore to lock in the owner task reference.
	 * Then continue to try to lock the task (inverse order).
	 */
	spl_level = FUNC8();
	FUNC6(semaphore);
	for (collisions = 0; semaphore->active; collisions++) {
		task_t task = semaphore->owner;

		FUNC1(task != TASK_NULL);
		
		if (FUNC10(task)) {
			FUNC5(task, semaphore);
			/* semaphore unlocked */
			FUNC9(spl_level);
			FUNC11(task);
			goto out;
		}
		
		/* failed to get out-of-order locks */
		FUNC7(semaphore);
		FUNC9(spl_level);
		FUNC3(collisions);
		spl_level = FUNC8();
		FUNC6(semaphore);
	}
	FUNC7(semaphore);
	FUNC9(spl_level);

 out:
	FUNC12(semaphore_zone, semaphore);
}