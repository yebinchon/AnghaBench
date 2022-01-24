#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LCK_MTX_ILOCKED_MSK ; 
 int LCK_MTX_MLOCKED_MSK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) __attribute__((always_inline))
static boolean_t
FUNC2(
	lck_mtx_t       *lock,
	uint32_t*        new_state)
{
	uint32_t state;

	for ( ; ; ) {
		FUNC0();
		state = FUNC1(lock);
		if (!(state & (LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK))) {
			*new_state = state;
			return TRUE;
		}
		if (state & LCK_MTX_MLOCKED_MSK) {
			/* if it is held as mutex, just fail */
			return FALSE;
		}
	}
}