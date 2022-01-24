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
struct vfsstatfs {int dummy; } ;
struct statfs64 {int dummy; } ;
struct getfsstat_struct {scalar_t__ count; scalar_t__ maxcount; int error; int flags; scalar_t__ sfsp; } ;
typedef  TYPE_1__* mount_t ;
struct TYPE_6__ {struct vfsstatfs mnt_vfsstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int MNT_DWAIT ; 
 int MNT_NOWAIT ; 
 int MNT_WAIT ; 
 int VFS_RETURNED ; 
 int VFS_RETURNED_DONE ; 
 int /*<<< orphan*/  VFS_USER_EVENT ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,struct vfsstatfs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(mount_t mp, void * arg)
{
	struct getfsstat_struct *fstp = (struct getfsstat_struct *)arg;
	struct vfsstatfs *sp;
	int error;

	if (fstp->sfsp && fstp->count < fstp->maxcount) {
#if CONFIG_MACF
		error = mac_mount_check_stat(vfs_context_current(), mp);
		if (error != 0) {
			fstp->error = error;
			return(VFS_RETURNED_DONE);
		}
#endif
		sp = &mp->mnt_vfsstat;
		/*
		 * If MNT_NOWAIT is specified, do not refresh the fsstat
		 * cache. MNT_WAIT overrides MNT_NOWAIT.
		 *
		 * We treat MNT_DWAIT as MNT_WAIT for all instances of
		 * getfsstat, since the constants are out of the same
		 * namespace.
		 */
		if (((fstp->flags & MNT_NOWAIT) == 0 ||
		     (fstp->flags & (MNT_WAIT | MNT_DWAIT))) &&
		    (error = FUNC4(mp, FUNC3(), VFS_USER_EVENT))) {
			FUNC0("vfs_update_vfsstat returned %d", error);
			return(VFS_RETURNED);
		}

		error = FUNC2(mp, sp, fstp->sfsp);
		if (error) {
			fstp->error = error;
			return(VFS_RETURNED_DONE);
		}
		fstp->sfsp += sizeof(struct statfs64);
	}
	fstp->count++;
	return(VFS_RETURNED);
}