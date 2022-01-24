#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct vfstable {int vfc_flags; int /*<<< orphan*/  vfc_name; int /*<<< orphan*/  vfc_refcount; int /*<<< orphan*/  vfc_vfsops; } ;
struct mount {int dummy; } ;
typedef  TYPE_2__* mount_t ;
struct TYPE_9__ {char* f_mntonname; int /*<<< orphan*/  f_mntfromname; int /*<<< orphan*/  f_fstypename; } ;
struct TYPE_10__ {int mnt_segreadcnt; int mnt_segwritecnt; int mnt_ioscale; int mnt_flag; TYPE_1__ mnt_vfsstat; void* mnt_vnodecovered; int /*<<< orphan*/  mnt_op; struct vfstable* mnt_vtable; int /*<<< orphan*/  mnt_newvnodes; int /*<<< orphan*/  mnt_workerqueue; int /*<<< orphan*/  mnt_vnodelist; scalar_t__ mnt_devbsdunit; scalar_t__ mnt_throttle_mask; int /*<<< orphan*/  mnt_authcache_ttl; void* mnt_realrootvp; scalar_t__ mnt_ioflags; int /*<<< orphan*/  mnt_ioqueue_depth; int /*<<< orphan*/  mnt_alignmentmask; int /*<<< orphan*/  mnt_devblocksize; int /*<<< orphan*/  mnt_maxwritecnt; int /*<<< orphan*/  mnt_maxsegwritesize; int /*<<< orphan*/  mnt_maxreadcnt; int /*<<< orphan*/  mnt_maxsegreadsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHED_LOOKUP_RIGHT_TTL ; 
 int /*<<< orphan*/  DEV_BSIZE ; 
 int /*<<< orphan*/  LK_NOWAIT ; 
 scalar_t__ LOWPRI_MAX_NUM_DEV ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  MAXPHYS ; 
 int /*<<< orphan*/  MFSTYPENAMELEN ; 
 int /*<<< orphan*/  MNT_DEFAULT_IOQUEUE_DEPTH ; 
 int MNT_RDONLY ; 
 int MNT_ROOTFS ; 
 int MNT_VISFLAGMASK ; 
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 void* NULLVP ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (void const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static mount_t
FUNC12(struct vfstable *vfsp, const char *devname)
{
	mount_t	mp;

	mp = FUNC1(sizeof(struct mount), M_MOUNT, M_WAITOK);
	FUNC2((char *)mp, sizeof(struct mount));

	/* Initialize the default IO constraints */
	mp->mnt_maxreadcnt = mp->mnt_maxwritecnt = MAXPHYS;
	mp->mnt_segreadcnt = mp->mnt_segwritecnt = 32;
	mp->mnt_maxsegreadsize = mp->mnt_maxreadcnt;
	mp->mnt_maxsegwritesize = mp->mnt_maxwritecnt;
	mp->mnt_devblocksize = DEV_BSIZE;
	mp->mnt_alignmentmask = PAGE_MASK;
	mp->mnt_ioqueue_depth = MNT_DEFAULT_IOQUEUE_DEPTH;
	mp->mnt_ioscale = 1;
	mp->mnt_ioflags = 0;
	mp->mnt_realrootvp = NULLVP;
	mp->mnt_authcache_ttl = CACHED_LOOKUP_RIGHT_TTL;
	mp->mnt_throttle_mask = LOWPRI_MAX_NUM_DEV - 1;
	mp->mnt_devbsdunit = 0;

	FUNC8(mp);
	(void)FUNC10(mp, LK_NOWAIT);

	FUNC0(&mp->mnt_vnodelist);
	FUNC0(&mp->mnt_workerqueue);
	FUNC0(&mp->mnt_newvnodes);

	mp->mnt_vtable = vfsp;
	mp->mnt_op = vfsp->vfc_vfsops;
	mp->mnt_flag = MNT_RDONLY | MNT_ROOTFS;
	mp->mnt_vnodecovered = NULLVP;
	//mp->mnt_stat.f_type = vfsp->vfc_typenum;
	mp->mnt_flag |= vfsp->vfc_flags & MNT_VISFLAGMASK;

	FUNC6();
	vfsp->vfc_refcount++;
	FUNC7();

	FUNC9(mp->mnt_vfsstat.f_fstypename, vfsp->vfc_name, MFSTYPENAMELEN);
	mp->mnt_vfsstat.f_mntonname[0] = '/';
	/* XXX const poisoning layering violation */
	(void) FUNC3((const void *)devname, mp->mnt_vfsstat.f_mntfromname, MAXPATHLEN - 1, NULL);

#if CONFIG_MACF
	mac_mount_label_init(mp);
	mac_mount_label_associate(vfs_context_kernel(), mp);
#endif
	return (mp);
}