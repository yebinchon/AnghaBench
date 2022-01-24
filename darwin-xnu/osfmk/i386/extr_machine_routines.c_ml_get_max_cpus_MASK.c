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
typedef  int /*<<< orphan*/  event_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int max_cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_CPUS_SET ; 
 scalar_t__ MAX_CPUS_WAIT ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ machine_info ; 
 scalar_t__ max_cpus_initialized ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(void)
{
        boolean_t current_state;

        current_state = FUNC1(FALSE);
        if (max_cpus_initialized != MAX_CPUS_SET) {
                max_cpus_initialized = MAX_CPUS_WAIT;
                FUNC0((event_t)&max_cpus_initialized, THREAD_UNINT);
                (void)FUNC2(THREAD_CONTINUE_NULL);
        }
        (void) FUNC1(current_state);
        return(machine_info.max_cpus);
}