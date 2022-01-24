#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ lck_rw_type_t ;
typedef  int /*<<< orphan*/  lck_rw_t ;

/* Variables and functions */
 scalar_t__ LCK_RW_TYPE_EXCLUSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

void
FUNC2(
	lck_rw_t	*lck)
{
	lck_rw_type_t	ret;

	ret = FUNC0(lck);

	if (ret != LCK_RW_TYPE_EXCLUSIVE)
		FUNC1("lck_rw_unlock_exclusive(): lock held in mode: %d\n", ret);
}