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
struct mount {int mnt_lflag; } ;
typedef  struct mount* mount_t ;
typedef  int /*<<< orphan*/  fsid_t ;

/* Variables and functions */
 int MNT_LDEAD ; 
 int MNT_LUNMOUNT ; 
#define  VFS_CLAIMED 131 
#define  VFS_CLAIMED_DONE 130 
 int VFS_ITERATE_CB_DROPREF ; 
 int VFS_ITERATE_TAIL_FIRST ; 
#define  VFS_RETURNED 129 
#define  VFS_RETURNED_DONE 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 struct mount* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 

int
FUNC8(int flags, int (*callout)(mount_t, void *), void *arg)
{
	mount_t	mp;
	int ret = 0;
	fsid_t * fsid_list;
	int count, actualcount,  i;
	void * allocmem;
	int indx_start, indx_stop, indx_incr;
	int cb_dropref = (flags & VFS_ITERATE_CB_DROPREF);

	count = FUNC3();
	count += 10;

	fsid_list = (fsid_t *)FUNC0(count * sizeof(fsid_t));
	allocmem = (void *)fsid_list;

	actualcount = FUNC2(fsid_list, count);

	/*
	 * Establish the iteration direction
	 * VFS_ITERATE_TAIL_FIRST overrides default head first order (oldest first)
	 */
	if (flags & VFS_ITERATE_TAIL_FIRST) {
		indx_start = actualcount - 1;
		indx_stop = -1;
		indx_incr = -1;
	} else /* Head first by default */ {
		indx_start = 0;
		indx_stop = actualcount;
		indx_incr = 1;
	}

	for (i=indx_start; i != indx_stop; i += indx_incr) {

		/* obtain the mount point with iteration reference */
		mp = FUNC5(&fsid_list[i], 0, 1);

		if(mp == (struct mount *)0)
			continue;
		FUNC6(mp);
		if (mp->mnt_lflag & (MNT_LDEAD | MNT_LUNMOUNT)) {
			FUNC7(mp);
			FUNC4(mp);
			continue;
		
		}
		FUNC7(mp);

		/* iterate over all the vnodes */
		ret = callout(mp, arg);

		/*
		 * Drop the iterref here if the callback didn't do it.
		 * Note: If cb_dropref is set the mp may no longer exist.
		 */
		if (!cb_dropref)
			FUNC4(mp);

		switch (ret) {
		case VFS_RETURNED:
		case VFS_RETURNED_DONE:
			if (ret == VFS_RETURNED_DONE) {
				ret = 0;
				goto out;
			}
			break;

		case VFS_CLAIMED_DONE:
			ret = 0;
			goto out;
		case VFS_CLAIMED:
		default:
			break;
		}
		ret = 0;
	}

out:
	FUNC1(allocmem, (count * sizeof(fsid_t)));
	return (ret);
}