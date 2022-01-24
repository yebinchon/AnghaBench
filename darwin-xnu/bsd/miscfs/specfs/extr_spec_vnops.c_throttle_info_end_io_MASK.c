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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bufattr {int /*<<< orphan*/  ba_flags; } ;
struct _throttle_io_info_t {int dummy; } ;
typedef  TYPE_1__* mount_t ;
typedef  TYPE_2__* buf_t ;
struct TYPE_8__ {TYPE_1__* v_mount; } ;
struct TYPE_7__ {struct bufattr b_attr; } ;
struct TYPE_6__ {size_t mnt_devbsdunit; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA_IO_TIER_UPGRADE ; 
 int /*<<< orphan*/  BA_STRATEGY_TRACKED_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bufattr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LOWPRI_MAX_NUM_DEV ; 
 struct _throttle_io_info_t* _throttle_io_info ; 
 TYPE_4__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct _throttle_io_info_t*,int) ; 

void FUNC5(buf_t bp) {
	mount_t mp;
	struct bufattr *bap;
	struct _throttle_io_info_t *info;
	int io_tier;

	bap = &bp->b_attr;
	if (!FUNC2(bap->ba_flags, BA_STRATEGY_TRACKED_IO)) {
		return;
	}
	FUNC0(bap->ba_flags, BA_STRATEGY_TRACKED_IO);

	mp = FUNC3(bp)->v_mount;
	if (mp != NULL) {
		info = &_throttle_io_info[mp->mnt_devbsdunit];
	} else {
		info = &_throttle_io_info[LOWPRI_MAX_NUM_DEV - 1];
	}

	io_tier = FUNC1(bap);
	if (FUNC2(bap->ba_flags, BA_IO_TIER_UPGRADE)) {
		io_tier--;
	}

	FUNC4(info, io_tier);
}