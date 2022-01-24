#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* cpu_warm_data_t ;
struct TYPE_2__ {scalar_t__ cwd_result; int /*<<< orphan*/  cwd_deadline; int /*<<< orphan*/  cwd_call; } ;

/* Variables and functions */
 int TIMER_CALL_LOCAL ; 
 int TIMER_CALL_SYS_CRITICAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(
		void *arg)
{
	cpu_warm_data_t cwdp = (cpu_warm_data_t)arg;

	FUNC0(cwdp->cwd_call, cwdp->cwd_deadline, TIMER_CALL_SYS_CRITICAL | TIMER_CALL_LOCAL);
	cwdp->cwd_result = 0;

	return;
}