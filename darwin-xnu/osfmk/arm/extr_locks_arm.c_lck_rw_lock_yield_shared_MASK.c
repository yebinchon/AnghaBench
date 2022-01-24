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
struct TYPE_2__ {scalar_t__ want_upgrade; scalar_t__ want_excl; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ lck_rw_word_t ;
typedef  int /*<<< orphan*/  lck_rw_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_SHARED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC5(lck_rw_t *lck, boolean_t force_yield)
{
	lck_rw_word_t	word;

	FUNC0(lck, LCK_RW_ASSERT_SHARED);

	word.data = FUNC4(lck);
	if (word.want_excl || word.want_upgrade || force_yield) {
		FUNC2(lck);
		FUNC3(2);
		FUNC1(lck);
		return TRUE;
	}

	return FALSE;
}