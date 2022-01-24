#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lck_mtx_type; scalar_t__ lck_mtx_tag; } ;
typedef  TYPE_1__ lck_mtx_t ;
typedef  int /*<<< orphan*/  lck_grp_t ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 scalar_t__ LCK_MTX_TAG_DESTROYED ; 
 scalar_t__ LCK_MTX_TYPE ; 
 int /*<<< orphan*/  LCK_TYPE_MTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 

void
FUNC4(
		lck_mtx_t * lck,
		lck_grp_t * grp)
{
	if (lck->lck_mtx_type != LCK_MTX_TYPE)
		FUNC3("Destroying invalid mutex %p", lck);
	if (lck->lck_mtx_tag == LCK_MTX_TAG_DESTROYED)
		FUNC3("Destroying previously destroyed lock %p", lck);
	FUNC2(lck, LCK_MTX_ASSERT_NOTOWNED);
	lck->lck_mtx_tag = LCK_MTX_TAG_DESTROYED;
	FUNC1(grp, LCK_TYPE_MTX);
	FUNC0(grp);
	return;
}