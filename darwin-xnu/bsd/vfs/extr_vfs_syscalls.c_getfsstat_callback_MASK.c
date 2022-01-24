#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vfsstatfs {int dummy; } ;
struct getfsstat_struct {scalar_t__ count; scalar_t__ maxcount; int error; int flags; int /*<<< orphan*/ * mp; scalar_t__ sfsp; } ;
typedef  TYPE_1__* mount_t ;
struct TYPE_7__ {struct vfsstatfs mnt_vfsstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int MNT_DWAIT ; 
 int MNT_NOWAIT ; 
 int MNT_WAIT ; 
 int VFS_RETURNED ; 
 int VFS_RETURNED_DONE ; 
 int /*<<< orphan*/  VFS_USER_EVENT ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,struct vfsstatfs*,scalar_t__,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(mount_t mp, void * arg)
{

	struct getfsstat_struct *fstp = (struct getfsstat_struct *)arg;
	struct vfsstatfs *sp;
	int error, my_size;
	vfs_context_t ctx = FUNC5();

	if (fstp->sfsp && fstp->count < fstp->maxcount) {
#if CONFIG_MACF
		error = mac_mount_check_stat(ctx, mp);
		if (error != 0) {
			fstp->error = error;
			return(VFS_RETURNED_DONE);
		}
#endif
		sp = &mp->mnt_vfsstat;
		/*
		 * If MNT_NOWAIT is specified, do not refresh the
		 * fsstat cache. MNT_WAIT/MNT_DWAIT overrides MNT_NOWAIT.
		 */
		if (((fstp->flags & MNT_NOWAIT) == 0 || (fstp->flags & (MNT_WAIT | MNT_DWAIT))) &&
			(error = FUNC7(mp, ctx,
			    VFS_USER_EVENT))) {
			FUNC1("vfs_update_vfsstat returned %d", error);
			return(VFS_RETURNED);
		}

		/*
		 * Need to handle LP64 version of struct statfs
		 */
		error = FUNC4(mp, sp, fstp->sfsp, &my_size, FUNC0(FUNC6(ctx)), FALSE);
		if (error) {
			fstp->error = error;
			return(VFS_RETURNED_DONE);
		}
		fstp->sfsp += my_size;

		if (fstp->mp) {
#if CONFIG_MACF
			error = mac_mount_label_get(mp, *fstp->mp);
			if (error) {
				fstp->error = error;
				return(VFS_RETURNED_DONE);
			}
#endif
			fstp->mp++;
		}
	}
	fstp->count++;
	return(VFS_RETURNED);
}