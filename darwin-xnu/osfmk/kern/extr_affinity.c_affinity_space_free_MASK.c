#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct affinity_space {int dummy; } ;
typedef  TYPE_1__* affinity_space_t ;
struct TYPE_5__ {int /*<<< orphan*/  aspc_lock; int /*<<< orphan*/  aspc_affinities; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  task_lck_grp ; 

__attribute__((used)) static void
FUNC5(affinity_space_t aspc)
{
	FUNC1(FUNC4(&aspc->aspc_affinities));

	FUNC3(&aspc->aspc_lock, &task_lck_grp);
	FUNC0("affinity_space_free(%p)\n", aspc);
	FUNC2(aspc, sizeof(struct affinity_space));
}