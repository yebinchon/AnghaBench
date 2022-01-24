#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ task_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  TYPE_1__* semaphore_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_8__ {scalar_t__ owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 TYPE_1__* SEMAPHORE_NULL ; 
 scalar_t__ TASK_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

kern_return_t
FUNC8(
	task_t			task,
	semaphore_t		semaphore)
{
	spl_t spl_level;

	if (semaphore == SEMAPHORE_NULL)
		return KERN_INVALID_ARGUMENT;

	if (task == TASK_NULL) {
		FUNC0(semaphore);
		return KERN_INVALID_ARGUMENT;
	}

	FUNC6(task);
	spl_level = FUNC4();
	FUNC2(semaphore);

	if (semaphore->owner != task) {
		FUNC3(semaphore);
		FUNC0(semaphore);
		FUNC5(spl_level);
		FUNC7(task);
		return KERN_INVALID_ARGUMENT;
	}

	FUNC1(task, semaphore);
	/* semaphore unlocked */

	FUNC5(spl_level);
	FUNC7(task);

	FUNC0(semaphore);
	return KERN_SUCCESS;
}