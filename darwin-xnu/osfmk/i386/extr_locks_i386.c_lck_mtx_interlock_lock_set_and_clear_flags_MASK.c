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
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  lck_mtx_state; } ;
typedef  TYPE_1__ lck_mtx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LCK_MTX_ILOCKED_MSK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static inline void
FUNC6(
	lck_mtx_t *mutex,
	uint32_t xor_flags,
	uint32_t and_flags,
	uint32_t *new_state)
{
	uint32_t state, prev;
	state = *new_state;

	for ( ; ; ) {
		/* have to wait for interlock to clear */
		while (FUNC0(state & (LCK_MTX_ILOCKED_MSK | xor_flags))) {
			FUNC2();
			state = FUNC5(mutex);
		}
		prev = state;                                   /* prev contains snapshot for exchange */
		state |= LCK_MTX_ILOCKED_MSK | xor_flags;       /* pick up interlock */
		state &= ~and_flags;                    	/* clear flags */

		FUNC3();
		if (FUNC1(&mutex->lck_mtx_state, prev, state, memory_order_acquire_smp, FALSE))
			break;
		FUNC4();
		FUNC2();
		state = FUNC5(mutex);
	}
	*new_state = state;
	return;
}