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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_importance_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIT_UPDATE_DROP ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC2(ipc_importance_task_t task_imp, uint32_t count)
{
	if (FUNC0(task_imp, IIT_UPDATE_DROP, count)) {
		FUNC1(task_imp, IIT_UPDATE_DROP, TRUE);
	}
	return KERN_SUCCESS;
}