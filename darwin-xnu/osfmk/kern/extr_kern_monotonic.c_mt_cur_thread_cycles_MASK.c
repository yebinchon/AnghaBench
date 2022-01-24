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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_2__* thread_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/ * mth_counts; } ;
struct TYPE_6__ {TYPE_1__ t_monotonic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 size_t MT_CORE_CYCLES ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt_core_supported ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

uint64_t
FUNC3(void)
{
	thread_t curthread = FUNC0();
	boolean_t intrs_en;
	uint64_t count;

	if (!mt_core_supported) {
		return 0;
	}

	intrs_en = FUNC1(FALSE);
	(void)FUNC2(curthread);
	count = curthread->t_monotonic.mth_counts[MT_CORE_CYCLES];
	FUNC1(intrs_en);

	return count;
}