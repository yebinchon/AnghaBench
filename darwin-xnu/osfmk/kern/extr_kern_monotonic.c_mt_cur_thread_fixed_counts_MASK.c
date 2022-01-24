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
typedef  scalar_t__ uint64_t ;
typedef  TYPE_2__* thread_t ;
struct TYPE_5__ {scalar_t__* mth_counts; } ;
struct TYPE_6__ {TYPE_1__ t_monotonic; } ;

/* Variables and functions */
 int FALSE ; 
 int MT_CORE_NFIXED ; 
 TYPE_2__* FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  mt_core_supported ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(uint64_t *counts)
{
	if (!mt_core_supported) {
		for (int i = 0; i < MT_CORE_NFIXED; i++) {
			counts[i] = 0;
		}
		return;
	}

	thread_t curthread = FUNC0();
	int intrs_en = FUNC1(FALSE);
	(void)FUNC2(curthread);
	for (int i = 0; i < MT_CORE_NFIXED; i++) {
		counts[i] = curthread->t_monotonic.mth_counts[i];
	}
	FUNC1(intrs_en);
}