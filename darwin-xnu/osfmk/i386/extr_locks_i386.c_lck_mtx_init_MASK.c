#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int lck_mtx_pad32; scalar_t__ lck_mtx_state; scalar_t__ lck_mtx_owner; int /*<<< orphan*/ * lck_mtx_ptr; int /*<<< orphan*/  lck_mtx_tag; } ;
typedef  TYPE_1__ lck_mtx_t ;
typedef  int /*<<< orphan*/  lck_mtx_ext_t ;
typedef  int /*<<< orphan*/  lck_grp_t ;
struct TYPE_9__ {int lck_attr_val; } ;
typedef  TYPE_2__ lck_attr_t ;

/* Variables and functions */
 int LCK_ATTR_DEBUG ; 
 TYPE_2__* LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_MTX_TAG_INDIRECT ; 
 int /*<<< orphan*/  LCK_TYPE_MTX ; 
 TYPE_2__ LockDefaultLckAttr ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 

void
FUNC4(
	lck_mtx_t	*lck,
	lck_grp_t	*grp,
	lck_attr_t	*attr)
{
	lck_mtx_ext_t	*lck_ext;
	lck_attr_t	*lck_attr;

	if (attr != LCK_ATTR_NULL)
		lck_attr = attr;
	else
		lck_attr = &LockDefaultLckAttr;

	if ((lck_attr->lck_attr_val) & LCK_ATTR_DEBUG) {
		if ((lck_ext = (lck_mtx_ext_t *)FUNC0(sizeof(lck_mtx_ext_t))) != 0) {
			FUNC3(lck_ext, grp, lck_attr);	
			lck->lck_mtx_tag = LCK_MTX_TAG_INDIRECT;
			lck->lck_mtx_ptr = lck_ext;
		}
	} else {
		lck->lck_mtx_owner = 0;
		lck->lck_mtx_state = 0;
	}
	lck->lck_mtx_pad32 = 0xFFFFFFFF;
	FUNC2(grp);
	FUNC1(grp, LCK_TYPE_MTX);
}