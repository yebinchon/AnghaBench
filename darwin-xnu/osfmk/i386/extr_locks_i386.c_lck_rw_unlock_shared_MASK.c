#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ lck_rw_type_t ;
struct TYPE_6__ {scalar_t__ lck_rw_shared_count; } ;
typedef  TYPE_1__ lck_rw_t ;

/* Variables and functions */
 scalar_t__ LCK_RW_TYPE_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,scalar_t__) ; 

void
FUNC3(
	lck_rw_t	*lck)
{
	lck_rw_type_t	ret;

	FUNC0(lck->lck_rw_shared_count > 0, "lck %p has shared_count=0x%x", lck, lck->lck_rw_shared_count);
	ret = FUNC1(lck);

	if (ret != LCK_RW_TYPE_SHARED)
		FUNC2("lck_rw_unlock_shared(): lock %p held in mode: %d\n", lck, ret);
}