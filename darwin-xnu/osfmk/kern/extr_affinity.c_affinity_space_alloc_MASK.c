#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct affinity_space {int dummy; } ;
typedef  TYPE_1__* affinity_space_t ;
struct TYPE_4__ {int aspc_task_count; int /*<<< orphan*/  aspc_affinities; int /*<<< orphan*/  aspc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  task_lck_attr ; 
 int /*<<< orphan*/  task_lck_grp ; 

__attribute__((used)) static affinity_space_t
FUNC4(void) 
{
	affinity_space_t	aspc;

	aspc = (affinity_space_t) FUNC1(sizeof(struct affinity_space));
	if (aspc == NULL)
		return NULL;

	FUNC2(&aspc->aspc_lock, &task_lck_grp, &task_lck_attr);
	FUNC3(&aspc->aspc_affinities);
	aspc->aspc_task_count = 1;

	FUNC0("affinity_space_create() returns %p\n", aspc);
	return aspc;
}