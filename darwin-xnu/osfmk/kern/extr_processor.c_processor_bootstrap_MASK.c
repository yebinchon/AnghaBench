#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * psets; } ;

/* Variables and functions */
 int /*<<< orphan*/  corpse_tasks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master_cpu ; 
 int /*<<< orphan*/  master_processor ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  processor_list_lock ; 
 int /*<<< orphan*/  pset0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ pset_node0 ; 
 int /*<<< orphan*/  pset_node_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasks ; 
 int /*<<< orphan*/  terminated_tasks ; 
 int /*<<< orphan*/  threads ; 

void
FUNC5(void)
{
	FUNC2(&pset0, &pset_node0);
	pset_node0.psets = &pset0;

	FUNC4(&pset_node_lock, 0);

	FUNC3(&tasks);
	FUNC3(&terminated_tasks);
	FUNC3(&threads);
	FUNC3(&corpse_tasks);

	FUNC4(&processor_list_lock, 0);

	master_processor = FUNC0(master_cpu);

	FUNC1(master_processor, master_cpu, &pset0);
}