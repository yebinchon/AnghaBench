#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  task_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int COALITION_NUM_TYPES ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

kern_return_t
FUNC2(task_t task)
{
	kern_return_t kr;
	int i;

	for (i = 0; i < COALITION_NUM_TYPES; i++) {
		kr = FUNC1(task, i);
		FUNC0(kr == KERN_SUCCESS);
	}

	return kr;
}