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
typedef  TYPE_1__* run_queue_t ;
typedef  int /*<<< orphan*/  processor_t ;
typedef  int boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  highq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC3(processor_t    processor,
                                         int            priority,
                                         boolean_t      gte)
{
	run_queue_t main_runq  = FUNC2(processor);
	run_queue_t bound_runq = FUNC1(processor);

	int qpri = FUNC0(main_runq->highq, bound_runq->highq);

	if (gte)
		return qpri >= priority;
	else
		return qpri > priority;
}