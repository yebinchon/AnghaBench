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
struct TYPE_3__ {scalar_t__ lck_spin_data; } ;
typedef  TYPE_1__ lck_spin_t ;
typedef  int /*<<< orphan*/  lck_grp_t ;

/* Variables and functions */
 scalar_t__ LCK_SPIN_TAG_DESTROYED ; 
 int /*<<< orphan*/  LCK_TYPE_SPIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(
		 lck_spin_t * lck,
		 lck_grp_t * grp)
{
	if (lck->lck_spin_data == LCK_SPIN_TAG_DESTROYED)
		return;
	lck->lck_spin_data = LCK_SPIN_TAG_DESTROYED;
	FUNC1(grp, LCK_TYPE_SPIN);
	FUNC0(grp);
}