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
typedef  TYPE_1__* mount_t ;
struct TYPE_6__ {int /*<<< orphan*/  mnt_kern_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNTK_LOCK_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  setlocklocal_callback ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(mount_t mp)
{
	FUNC0(mp);
	mp->mnt_kern_flag |= MNTK_LOCK_LOCAL;
	FUNC1(mp);

	/*
	 * The number of active vnodes is expected to be
	 * very small when vfs_setlocklocal is invoked.
	 */
	FUNC2(mp, 0, setlocklocal_callback, NULL);
}