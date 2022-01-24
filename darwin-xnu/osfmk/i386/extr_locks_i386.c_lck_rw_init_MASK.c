#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int lck_rw_priv_excl; scalar_t__ lck_rw_tag; scalar_t__ lck_w_waiting; scalar_t__ lck_r_waiting; int /*<<< orphan*/  lck_rw_can_sleep; scalar_t__ lck_rw_shared_count; void* lck_rw_want_upgrade; void* lck_rw_want_write; int /*<<< orphan*/  lck_rw_interlock; } ;
typedef  TYPE_1__ lck_rw_t ;
typedef  int /*<<< orphan*/  lck_grp_t ;
struct TYPE_8__ {int lck_attr_val; } ;
typedef  TYPE_2__ lck_attr_t ;

/* Variables and functions */
 void* FALSE ; 
 TYPE_2__* LCK_ATTR_NULL ; 
 int LCK_ATTR_RW_SHARED_PRIORITY ; 
 int /*<<< orphan*/  LCK_TYPE_RW ; 
 TYPE_2__ LockDefaultLckAttr ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(
	lck_rw_t	*lck,
	lck_grp_t	*grp,
	lck_attr_t	*attr)
{
	lck_attr_t	*lck_attr = (attr != LCK_ATTR_NULL) ?
					attr : &LockDefaultLckAttr;

	FUNC0(&lck->lck_rw_interlock);
	lck->lck_rw_want_write = FALSE;
	lck->lck_rw_want_upgrade = FALSE;
	lck->lck_rw_shared_count = 0;
	lck->lck_rw_can_sleep = TRUE;
	lck->lck_r_waiting = lck->lck_w_waiting = 0;
	lck->lck_rw_tag = 0;
	lck->lck_rw_priv_excl = ((lck_attr->lck_attr_val &
				LCK_ATTR_RW_SHARED_PRIORITY) == 0);

	FUNC2(grp);
	FUNC1(grp, LCK_TYPE_RW);
}