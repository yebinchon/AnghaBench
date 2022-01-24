#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* processor_t ;
struct TYPE_8__ {int /*<<< orphan*/  current_perfctl_class; int /*<<< orphan*/  current_recommended_pset_type; int /*<<< orphan*/  current_sfi_class; int /*<<< orphan*/  current_pri; } ;
struct TYPE_7__ {int /*<<< orphan*/  sfi_class; int /*<<< orphan*/  sched_pri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(processor_t processor, thread_t thread)
{
    processor->current_pri = thread->sched_pri;
    processor->current_sfi_class = thread->sfi_class;
    processor->current_recommended_pset_type = FUNC0(thread);
    processor->current_perfctl_class = FUNC1(thread);
}