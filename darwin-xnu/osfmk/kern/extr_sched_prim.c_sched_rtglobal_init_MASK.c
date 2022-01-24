#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* processor_set_t ;
struct TYPE_5__ {int /*<<< orphan*/  rt_runq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__ pset0 ; 
 void FUNC1 (TYPE_1__*) ; 

void
FUNC2(processor_set_t pset)
{
	if (pset == &pset0) {
		return FUNC1(pset);
	}

	/* Only pset0 rt_runq is used, so make it easy to detect
	 * buggy accesses to others.
	 */
	FUNC0(&pset->rt_runq, 0xfd, sizeof pset->rt_runq);
}