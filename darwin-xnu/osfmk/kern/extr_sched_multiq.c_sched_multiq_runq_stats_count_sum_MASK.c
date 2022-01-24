#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  TYPE_4__* processor_t ;
struct TYPE_10__ {scalar_t__ count_sum; } ;
struct TYPE_15__ {TYPE_1__ runq_stats; } ;
struct TYPE_12__ {scalar_t__ count_sum; } ;
struct TYPE_14__ {TYPE_3__ runq_stats; } ;
struct TYPE_13__ {scalar_t__ cpu_id; TYPE_2__* processor_set; } ;
struct TYPE_11__ {scalar_t__ cpu_set_low; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_4__*) ; 
 TYPE_6__* FUNC1 (TYPE_4__*) ; 

__attribute__((used)) static uint64_t
FUNC2(processor_t processor)
{
	/*
	 * TODO: This one does need to go through all the runqueues, but it's only needed for
	 * the sched stats tool
	 */

	uint64_t bound_sum = FUNC0(processor)->runq_stats.count_sum;

	if (processor->cpu_id == processor->processor_set->cpu_set_low)
		return bound_sum + FUNC1(processor)->runq_stats.count_sum;
	else
		return bound_sum;
}