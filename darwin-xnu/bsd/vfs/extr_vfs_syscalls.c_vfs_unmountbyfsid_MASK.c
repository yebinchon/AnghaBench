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
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  scalar_t__ mount_t ;
typedef  int /*<<< orphan*/  fsid_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int,int /*<<< orphan*/ ) ; 

int
FUNC4(fsid_t *fsid, int flags, vfs_context_t ctx)
{
	mount_t mp;

	mp = FUNC1(fsid, 0, 1);
	if (mp == (mount_t)0) {
		return(ENOENT);
	}
	FUNC2(mp, 0);
	FUNC0(mp);
	/* safedounmount consumes the mount ref */
	return(FUNC3(mp, flags, ctx));
}