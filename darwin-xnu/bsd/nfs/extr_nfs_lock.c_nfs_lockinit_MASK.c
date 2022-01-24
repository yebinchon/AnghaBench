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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_lock_lck_grp ; 
 int /*<<< orphan*/  nfs_lock_mutex ; 
 int /*<<< orphan*/  nfs_lockd_mount_list ; 
 int /*<<< orphan*/  nfs_pendlockq ; 

void
FUNC3(void)
{
	FUNC0(&nfs_pendlockq);
	FUNC0(&nfs_lockd_mount_list);

	nfs_lock_lck_grp = FUNC1("nfs_lock", LCK_GRP_ATTR_NULL);
	nfs_lock_mutex = FUNC2(nfs_lock_lck_grp, LCK_ATTR_NULL);
}