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
struct TYPE_3__ {scalar_t__ lock_spin_cnt; scalar_t__ lock_spin_util_cnt; scalar_t__ lock_spin_miss_cnt; scalar_t__ lockgroup_name; } ;
typedef  TYPE_1__ lockgroup_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 

void
FUNC1(int requested, lockgroup_info_t *lockgroup)
{
	lockgroup_info_t	*curptr = &lockgroup[requested];

	if (curptr->lock_spin_cnt != 0 && curptr->lock_spin_util_cnt != 0) {
		FUNC0("%16lld ", curptr->lock_spin_util_cnt);
		FUNC0("%16lld   ", curptr->lock_spin_miss_cnt);
		FUNC0("%-14s\n", curptr->lockgroup_name);
	}
}