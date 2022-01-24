#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct vnode_fsparam {char* vnfs_str; int vnfs_flags; scalar_t__ vnfs_markroot; scalar_t__ vnfs_marksystem; scalar_t__ vnfs_filesize; scalar_t__ vnfs_rdev; int /*<<< orphan*/  vnfs_vops; int /*<<< orphan*/ * vnfs_cnp; int /*<<< orphan*/ * vnfs_fsnode; int /*<<< orphan*/ * vnfs_dvp; int /*<<< orphan*/  vnfs_vtype; struct mount* vnfs_mp; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;
struct mount {int dummy; } ;
typedef  scalar_t__ dev_t ;
struct TYPE_11__ {int /*<<< orphan*/  v_tag; int /*<<< orphan*/  v_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_WRITE_DATA ; 
 int ENODEV ; 
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  FSCRED ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 scalar_t__ NODEV ; 
 TYPE_1__* NULLVP ; 
 int /*<<< orphan*/  VBDEVVP ; 
 int /*<<< orphan*/  VBLK ; 
 int /*<<< orphan*/  VCREATESIZE ; 
 int /*<<< orphan*/  VNCREATE_FLAVOR ; 
 int VNFS_CANTCACHE ; 
 int VNFS_NOCACHE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct vfs_context*) ; 
 int /*<<< orphan*/  VT_NON ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  spec_vnodeop_p ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode_fsparam*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int
FUNC9(dev_t dev, vnode_t *vpp)
{
	vnode_t	nvp;
	int	error;
	struct vnode_fsparam vfsp;
	struct vfs_context context;

	if (dev == NODEV) {
		*vpp = NULLVP;
		return (ENODEV);
	}

	context.vc_thread = FUNC3();
	context.vc_ucred = FSCRED;

	vfsp.vnfs_mp = (struct mount *)0;
	vfsp.vnfs_vtype = VBLK;
	vfsp.vnfs_str = "bdevvp";
	vfsp.vnfs_dvp = NULL;
	vfsp.vnfs_fsnode = NULL;
	vfsp.vnfs_cnp = NULL;
	vfsp.vnfs_vops = spec_vnodeop_p;
	vfsp.vnfs_rdev = dev;
	vfsp.vnfs_filesize = 0;

	vfsp.vnfs_flags = VNFS_NOCACHE | VNFS_CANTCACHE;

	vfsp.vnfs_marksystem = 0;
	vfsp.vnfs_markroot = 0;

	if ( (error = FUNC5(VNCREATE_FLAVOR, VCREATESIZE, &vfsp, &nvp)) ) {
		*vpp = NULLVP;
		return (error);
	}
	FUNC6(nvp);
	nvp->v_flag |= VBDEVVP;
	nvp->v_tag = VT_NON;	/* set this to VT_NON so during aliasing it can be replaced */
	FUNC8(nvp);
	if ( (error = FUNC7(nvp)) ) {
		FUNC4("bdevvp failed: vnode_ref");
		return (error);
	}
	if ( (error = FUNC0(nvp, MNT_WAIT, &context)) ) {
		FUNC4("bdevvp failed: fsync");
		return (error);
	}
	if ( (error = FUNC2(nvp, BUF_WRITE_DATA, 0, 0)) ) {
		FUNC4("bdevvp failed: invalidateblks");
		return (error);
	}

#if CONFIG_MACF
	/* 
	 * XXXMAC: We can't put a MAC check here, the system will
	 * panic without this vnode.
	 */
#endif /* MAC */	

	if ( (error = FUNC1(nvp, FREAD, &context)) ) {
		FUNC4("bdevvp failed: open");
		return (error);
	}
	*vpp = nvp;

	return (0);
}