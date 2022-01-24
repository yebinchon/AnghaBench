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
typedef  int /*<<< orphan*/  queue_entry_t ;
typedef  int /*<<< orphan*/  lck_grp_t ;

/* Variables and functions */
 int /*<<< orphan*/  lck_grp_cnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lck_grp_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(
	lck_grp_t	*grp)
{
	FUNC1(&lck_grp_lock);
	lck_grp_cnt--;
	(void)FUNC3((queue_entry_t)grp);
	FUNC2(&lck_grp_lock);
	FUNC0(grp);
}