#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_saved_state_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_8__ {int /*<<< orphan*/ * cpu_int_state; } ;
struct TYPE_7__ {int cs; uintptr_t eip; uintptr_t ebp; } ;
struct TYPE_5__ {int cs; uintptr_t rip; } ;
struct TYPE_6__ {uintptr_t rbp; TYPE_1__ isf; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int SEL_PL ; 
 int SEL_PL_U ; 
 TYPE_4__* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static kern_return_t
FUNC4(uintptr_t *pc, uintptr_t *fp)
{
	x86_saved_state_t *state;
	bool state_64;
	uint64_t cs;

	state = FUNC0()->cpu_int_state;
	if (!state) {
		return KERN_FAILURE;
	}

	state_64 = FUNC1(state);

	if (state_64) {
		cs = FUNC3(state)->isf.cs;
	} else {
		cs = FUNC2(state)->cs;
	}
	/* return early if interrupted a thread in user space */
	if ((cs & SEL_PL) == SEL_PL_U) {
		return KERN_FAILURE;
	}

	if (state_64) {
		*pc = FUNC3(state)->isf.rip;
		*fp = FUNC3(state)->rbp;
	} else {
		*pc = FUNC2(state)->eip;
		*fp = FUNC2(state)->ebp;
	}
	return KERN_SUCCESS;
}