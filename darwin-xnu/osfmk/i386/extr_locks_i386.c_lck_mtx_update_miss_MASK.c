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
typedef  int /*<<< orphan*/  uint64_t ;
struct _lck_mtx_ext_ {TYPE_1__* lck_mtx_grp; } ;
struct TYPE_2__ {int /*<<< orphan*/  lck_grp_miss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void __inline__
FUNC1(
	struct _lck_mtx_ext_ *lock,
	int *first_miss)
{
#if LOG_FIRST_MISS_ALONE
	if ((*first_miss & 1) == 0) {
#else
#pragma unused(first_miss)
#endif
		uint64_t* stat = &lock->lck_mtx_grp->lck_grp_miss;
		FUNC0(stat);

#if LOG_FIRST_MISS_ALONE
		*first_miss |= 1;
	}
#endif
}