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
typedef  int /*<<< orphan*/  lck_grp_t ;
typedef  int /*<<< orphan*/  lck_grp_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  fpxlock ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
	lck_grp_attr_t *lck_grp_attr = FUNC1();
	lck_grp_t *lck_grp = FUNC0("fpx", lck_grp_attr);
	FUNC2(&fpxlock, lck_grp, LCK_ATTR_NULL);
}