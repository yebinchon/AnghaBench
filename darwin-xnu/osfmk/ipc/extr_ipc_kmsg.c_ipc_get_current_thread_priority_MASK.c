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
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ thread_qos_t ;
typedef  int /*<<< orphan*/  mach_msg_priority_t ;
struct TYPE_4__ {int /*<<< orphan*/  base_pri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mach_msg_priority_t
FUNC4(void)
{
	thread_t thread = FUNC1();
	thread_qos_t qos;
	int relpri;

	qos = FUNC2(thread, &relpri);
	if (!qos) {
		qos = FUNC3(thread->base_pri);
		relpri = 0;
	}
	return (mach_msg_priority_t)FUNC0(qos, relpri, 0);
}