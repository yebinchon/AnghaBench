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
typedef  size_t uint32_t ;
struct TYPE_2__ {scalar_t__ cpu_active_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPINLOCK_TIMEOUT ; 
 TYPE_1__** cpu_data_ptr ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t real_ncpus ; 
 size_t spinlock_owner_cpu ; 

uint32_t FUNC3(uintptr_t thread_addr) {
	uint32_t i;

	for (i = 0; i < real_ncpus; i++) {
		if ((cpu_data_ptr[i] != NULL) && ((uintptr_t)cpu_data_ptr[i]->cpu_active_thread == thread_addr)) {
			spinlock_owner_cpu = i;
			if ((uint32_t) FUNC1() != i) {
				/* Cause NMI and panic on the owner's cpu */
				FUNC0(FUNC2(i), SPINLOCK_TIMEOUT);
			}
			break;
		}
	}

	return spinlock_owner_cpu;
}