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
struct TYPE_4__ {scalar_t__ lck_rw_tag; } ;
typedef  TYPE_1__ lck_rw_t ;
typedef  int /*<<< orphan*/  lck_grp_t ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_RW_ASSERT_NOTHELD ; 
 scalar_t__ LCK_RW_TAG_DESTROYED ; 
 int /*<<< orphan*/  LCK_TYPE_RW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC3(
	lck_rw_t	*lck,
	lck_grp_t	*grp)
{
	if (lck->lck_rw_tag == LCK_RW_TAG_DESTROYED)
		return;
#if MACH_LDEBUG
	lck_rw_assert(lck, LCK_RW_ASSERT_NOTHELD);
#endif
	lck->lck_rw_tag = LCK_RW_TAG_DESTROYED;
	FUNC1(grp, LCK_TYPE_RW);
	FUNC0(grp);
	return;
}