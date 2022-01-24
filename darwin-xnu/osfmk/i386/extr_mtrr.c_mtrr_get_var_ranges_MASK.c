#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mask; int refcnt; void* base; } ;
typedef  TYPE_1__ mtrr_var_range_t ;

/* Variables and functions */
 int IA32_MTRR_PHYMASK_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(mtrr_var_range_t * range, int count)
{
	int i;

	for (i = 0; i < count; i++) {
		range[i].base = FUNC2(FUNC0(i));
		range[i].mask = FUNC2(FUNC1(i));

		/* bump ref count for firmware configured ranges */
		if (range[i].mask & IA32_MTRR_PHYMASK_VALID)
			range[i].refcnt = 1;
		else
			range[i].refcnt = 0;
	}
}