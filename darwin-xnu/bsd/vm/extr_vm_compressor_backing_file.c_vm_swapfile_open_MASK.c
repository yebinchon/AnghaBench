#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {TYPE_1__* v_mount; } ;
struct TYPE_7__ {int mnt_kern_flag; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int MNTK_NOSWAP ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (char const*,int,int,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(const char *path, vnode_t *vp)
{
	int error = 0;
	vfs_context_t	ctx = FUNC1();

	if ((error = FUNC3(path, (O_CREAT | O_TRUNC | FREAD | FWRITE), S_IRUSR | S_IWUSR, 0, vp, ctx))) {
		FUNC0("Failed to open swap file %d\n", error);
		*vp = NULL;
		return;
	}	

	/*
	 * If MNT_IOFLAGS_NOSWAP is set, opening the swap file should fail.
	 * To avoid a race on the mount we only make this check after creating the
	 * vnode.
	 */
	if ((*vp)->v_mount->mnt_kern_flag & MNTK_NOSWAP) {
		FUNC4(*vp);
		FUNC2((uint64_t)path, *vp);
		*vp = NULL;
		return;
	}

	FUNC4(*vp);
}