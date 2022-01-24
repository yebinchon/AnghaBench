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
typedef  scalar_t__ integer_t ;
typedef  int /*<<< orphan*/  event_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {scalar_t__ max_cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned long MAX_CPUS ; 
 scalar_t__ MAX_CPUS_SET ; 
 scalar_t__ MAX_CPUS_WAIT ; 
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__ machine_info ; 
 scalar_t__ max_cpus_initialized ; 
 int /*<<< orphan*/  max_ncpus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(unsigned long max_cpus)
{
        boolean_t current_state;

        current_state = FUNC1(FALSE);
        if (max_cpus_initialized != MAX_CPUS_SET) {
                if (max_cpus > 0 && max_cpus <= MAX_CPUS) {
			/*
			 * Note: max_cpus is the number of enabled processors
			 * that ACPI found; max_ncpus is the maximum number
			 * that the kernel supports or that the "cpus="
			 * boot-arg has set. Here we take int minimum.
			 */
                        machine_info.max_cpus = (integer_t)FUNC0(max_cpus, max_ncpus);
		}
                if (max_cpus_initialized == MAX_CPUS_WAIT)
                        FUNC2((event_t)&max_cpus_initialized);
                max_cpus_initialized = MAX_CPUS_SET;
        }
        (void) FUNC1(current_state);
}