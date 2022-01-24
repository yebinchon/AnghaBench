#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ semaphore_t ;
struct TYPE_6__ {int /*<<< orphan*/  semaphore_list; } ;

/* Variables and functions */
 scalar_t__ SEMASPERSPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(
	task_t			task)
{
	uint32_t count;
	spl_t spl_level;

	count = 0;
	FUNC6(task);
	while (!FUNC0(&task->semaphore_list)) {
		semaphore_t semaphore;

		semaphore = (semaphore_t) FUNC1(&task->semaphore_list);

		if (count == 0) 
			spl_level = FUNC4();
		FUNC3(semaphore);

		FUNC2(task, semaphore);
		/* semaphore unlocked */

		/* throttle number of semaphores per interrupt disablement */
		if (++count == SEMASPERSPL) {
			count = 0;
			FUNC5(spl_level);
		}
	}
	if (count != 0)
		FUNC5(spl_level);

	FUNC7(task);
}