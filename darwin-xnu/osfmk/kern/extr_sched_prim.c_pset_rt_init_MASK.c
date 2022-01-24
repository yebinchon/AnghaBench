#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* processor_set_t ;
struct TYPE_5__ {int /*<<< orphan*/  runq_stats; int /*<<< orphan*/  queue; scalar_t__ count; } ;
struct TYPE_6__ {TYPE_1__ rt_runq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(processor_set_t pset)
{
	FUNC2(pset);

	pset->rt_runq.count = 0;
	FUNC1(&pset->rt_runq.queue);
	FUNC0(&pset->rt_runq.runq_stats, 0, sizeof pset->rt_runq.runq_stats);
}