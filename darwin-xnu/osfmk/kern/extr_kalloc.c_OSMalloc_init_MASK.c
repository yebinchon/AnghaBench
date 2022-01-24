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

/* Variables and functions */
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  LCK_GRP_ATTR_NULL ; 
 int /*<<< orphan*/  OSMalloc_tag_lck_grp ; 
 int /*<<< orphan*/  OSMalloc_tag_list ; 
 int /*<<< orphan*/  OSMalloc_tag_lock ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(
	void)
{
	FUNC2(&OSMalloc_tag_list);

	OSMalloc_tag_lck_grp = FUNC0("OSMalloc_tag", LCK_GRP_ATTR_NULL);
	FUNC1(&OSMalloc_tag_lock, OSMalloc_tag_lck_grp, LCK_ATTR_NULL);
}