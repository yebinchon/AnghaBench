#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct TYPE_4__ {scalar_t__ f_owner; } ;
struct mount {int mnt_kern_flag; int mnt_flag; TYPE_1__ mnt_vfsstat; } ;
typedef  TYPE_2__* proc_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_acflag; } ;

/* Variables and functions */
 int EBUSY ; 
 int MNTK_BACKS_ROOT ; 
 int MNTK_PERMIT_UNMOUNT ; 
 int MNT_FORCE ; 
 int MNT_LNOTRESP ; 
 int MNT_NOBLOCK ; 
 int MNT_ROOTFS ; 
 int FUNC0 (struct mount*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct mount *mp, int flags, vfs_context_t ctx)
{
	int error;
	proc_t p = FUNC5(ctx);

	/*
	 * If the file system is not responding and MNT_NOBLOCK
	 * is set and not a forced unmount then return EBUSY.
	 */
	if ((mp->mnt_kern_flag & MNT_LNOTRESP) &&
		(flags & MNT_NOBLOCK) && ((flags & MNT_FORCE) == 0)) {
		error = EBUSY;
		goto out;
	}

	/*
	 * Skip authorization if the mount is tagged as permissive and
	 * this is not a forced-unmount attempt.
	 */
	if (!(((mp->mnt_kern_flag & MNTK_PERMIT_UNMOUNT) != 0) && ((flags & MNT_FORCE) == 0))) {
		/*
		 * Only root, or the user that did the original mount is
		 * permitted to unmount this filesystem.
		 */
		if ((mp->mnt_vfsstat.f_owner != FUNC2(FUNC1())) &&
				(error = FUNC4(FUNC1(), &p->p_acflag)))
			goto out;
	}
	/*
	 * Don't allow unmounting the root file system.
	 */
	if (mp->mnt_flag & MNT_ROOTFS) {
		error = EBUSY; /* the root is always busy */
		goto out;
	}

#ifdef CONFIG_IMGSRC_ACCESS
	if (mp->mnt_kern_flag & MNTK_BACKS_ROOT) {
		error = EBUSY;
		goto out;
	}
#endif /* CONFIG_IMGSRC_ACCESS */

	return (FUNC0(mp, flags, 1, ctx));

out:
	FUNC3(mp, 0);
	return(error);
}