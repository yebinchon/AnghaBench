#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mount_t ;
struct TYPE_3__ {int /*<<< orphan*/  mnt_rwlock; int /*<<< orphan*/  mnt_renamelock; int /*<<< orphan*/  mnt_iter_lock; int /*<<< orphan*/  mnt_mlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_lck_attr ; 
 int /*<<< orphan*/  mnt_lck_grp ; 

void
FUNC2(mount_t mp)
{
	FUNC0(&mp->mnt_mlock, mnt_lck_grp, mnt_lck_attr);
	FUNC0(&mp->mnt_iter_lock, mnt_lck_grp, mnt_lck_attr);
	FUNC0(&mp->mnt_renamelock, mnt_lck_grp, mnt_lck_attr);
	FUNC1(&mp->mnt_rwlock, mnt_lck_grp, mnt_lck_attr);
}