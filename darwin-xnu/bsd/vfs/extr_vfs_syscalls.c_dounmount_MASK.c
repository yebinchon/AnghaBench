#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  struct vnode* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode {scalar_t__ v_resolve; int /*<<< orphan*/  v_flag; struct mount* v_mountedhere; } ;
struct mount {int mnt_lflag; int mnt_flag; int /*<<< orphan*/  mnt_rwlock; int /*<<< orphan*/  mnt_triggerdata; int /*<<< orphan*/  (* mnt_triggercallback ) (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* mnt_vtable; int /*<<< orphan*/  mnt_crossref; struct vnode* mnt_vnodecovered; struct vnode* mnt_devvp; int /*<<< orphan*/  mnt_kern_flag; struct vnode* mnt_realrootvp; } ;
typedef  TYPE_2__* proc_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_flag; } ;
struct TYPE_5__ {int vfc_vfsflags; int /*<<< orphan*/  vfc_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int FORCECLOSE ; 
 int FREAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC2 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MNTK_UNMOUNT ; 
 int MNT_ASYNC ; 
 int MNT_FORCE ; 
 int MNT_LDEAD ; 
 int MNT_LFORCE ; 
 int MNT_LNOSUB ; 
 int MNT_LUNMOUNT ; 
 int MNT_LWAIT ; 
 int MNT_NOBLOCK ; 
 int MNT_RDONLY ; 
 int MNT_ROOTFS ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  NOTE_WRITE ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ *) ; 
 int P_NOREMOTEHANG ; 
 int SKIPROOT ; 
 int SKIPSWAP ; 
 int SKIPSYSTEM ; 
 int VFC_VFSLOCALARGS ; 
 int FUNC6 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mount*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMOUNT ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VQ_UNMOUNT ; 
 int /*<<< orphan*/  VTC_RELEASE ; 
 int /*<<< orphan*/  VTC_REPLACE ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kIOMountChangeUnmount ; 
 TYPE_2__* kernproc ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mount*) ; 
 int /*<<< orphan*/  FUNC17 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct mount*,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mount_generation ; 
 int /*<<< orphan*/  FUNC19 (struct mount*) ; 
 int /*<<< orphan*/  FUNC20 (struct mount*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct mount*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct mount*) ; 
 int /*<<< orphan*/  FUNC25 (struct mount*) ; 
 int /*<<< orphan*/  FUNC26 (struct mount*) ; 
 int /*<<< orphan*/  FUNC27 (struct mount*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct mount*) ; 
 int FUNC34 (struct mount*,struct vnode*,int) ; 
 TYPE_2__* FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  FUNC37 (struct mount*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vfs_nummntops ; 
 int /*<<< orphan*/  FUNC38 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC39 (struct vnode*) ; 
 struct vnode* FUNC40 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC41 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC42 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC43 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC44 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC45 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ) ; 

int
FUNC48(struct mount *mp, int flags, int withref, vfs_context_t ctx)
{
	vnode_t coveredvp = (vnode_t)0;
	int error;
	int needwakeup = 0;
	int forcedunmount = 0;
	int lflags = 0;
	struct vnode *devvp = NULLVP;
#if CONFIG_TRIGGERS
	proc_t p = vfs_context_proc(ctx);
	int did_vflush = 0;
	int pflags_save = 0;
#endif /* CONFIG_TRIGGERS */

#if CONFIG_FSE
	if (!(flags & MNT_FORCE)) {
		fsevent_unmount(mp, ctx);  /* has to come first! */
	}
#endif

	FUNC24(mp);

	/*
	 * If already an unmount in progress just return EBUSY.
	 * Even a forced unmount cannot override.
	 */
	if (mp->mnt_lflag & MNT_LUNMOUNT) {
		if (withref != 0)
			FUNC17(mp, 1);
		FUNC27(mp);
		return (EBUSY);
	}

	if (flags & MNT_FORCE) {
		forcedunmount = 1;
		mp->mnt_lflag |= MNT_LFORCE;
	}

#if CONFIG_TRIGGERS
	if (flags & MNT_NOBLOCK && p != kernproc)
		pflags_save = OSBitOrAtomic(P_NOREMOTEHANG, &p->p_flag);
#endif

	mp->mnt_kern_flag |= MNTK_UNMOUNT;
	mp->mnt_lflag |= MNT_LUNMOUNT;
	mp->mnt_flag &=~ MNT_ASYNC;
	/*
	 * anyone currently in the fast path that
	 * trips over the cached rootvp will be
	 * dumped out and forced into the slow path
	 * to regenerate a new cached value
	 */
	mp->mnt_realrootvp = NULLVP;
	FUNC27(mp);

	if (forcedunmount && (flags & MNT_LNOSUB) == 0) {
		/*
		 * Force unmount any mounts in this filesystem.
		 * If any unmounts fail - just leave them dangling.
		 * Avoids recursion.
		 */
		(void) FUNC11(mp, flags | MNT_LNOSUB, ctx);
	}

	/*
	 * taking the name_cache_lock exclusively will
	 * insure that everyone is out of the fast path who
	 * might be trying to use a now stale copy of
	 * vp->v_mountedhere->mnt_realrootvp
	 * bumping mount_generation causes the cached values
	 * to be invalidated
	 */
	FUNC28();
	mount_generation++;
	FUNC29();


	FUNC14(&mp->mnt_rwlock);
	if (withref != 0)
		FUNC17(mp, 0);
	error = 0;
	if (forcedunmount == 0) {
		FUNC33(mp);	/* release cached vnodes */
		if ((mp->mnt_flag & MNT_RDONLY) == 0) {
			error = FUNC6(mp, MNT_WAIT, ctx);
			if (error) {
				FUNC24(mp);
				mp->mnt_kern_flag &= ~MNTK_UNMOUNT;
				mp->mnt_lflag &= ~MNT_LUNMOUNT;
				mp->mnt_lflag &= ~MNT_LFORCE;
				goto out;
			}
		}
	}

	/* free disk_conditioner_info structure for this mount */
	FUNC10(mp);

	FUNC2(mp, kIOMountChangeUnmount);

#if CONFIG_TRIGGERS
	vfs_nested_trigger_unmounts(mp, flags, ctx);
	did_vflush = 1;
#endif
	if (forcedunmount)
		lflags |= FORCECLOSE;
	error = FUNC34(mp, NULLVP, SKIPSWAP | SKIPSYSTEM  | SKIPROOT | lflags);
	if ((forcedunmount == 0) && error) {
		FUNC24(mp);
		mp->mnt_kern_flag &= ~MNTK_UNMOUNT;
		mp->mnt_lflag &= ~MNT_LUNMOUNT;
		mp->mnt_lflag &= ~MNT_LFORCE;
		goto out;
	}

	/* make sure there are no one in the mount iterations or lookup */
	FUNC19(mp);

	error = FUNC7(mp, flags, ctx);
	if (error) {
		FUNC20(mp);
		FUNC24(mp);
		mp->mnt_kern_flag &= ~MNTK_UNMOUNT;
		mp->mnt_lflag &= ~MNT_LUNMOUNT;
		mp->mnt_lflag &= ~MNT_LFORCE;
		goto out;
	}

	/* increment the operations count */
	if (!error)
		FUNC3(1, &vfs_nummntops);

	if ( mp->mnt_devvp && mp->mnt_vtable->vfc_vfsflags & VFC_VFSLOCALARGS) {
		/* hold an io reference and drop the usecount before close */
		devvp = mp->mnt_devvp;
		FUNC39(devvp);
		FUNC44(devvp);
		FUNC8(devvp, mp->mnt_flag & MNT_RDONLY ? FREAD : FREAD|FWRITE,
                       ctx);
		FUNC38(devvp);
		FUNC43(devvp);
	}
	FUNC13(&mp->mnt_rwlock);
	FUNC22(mp);
	FUNC14(&mp->mnt_rwlock);

	/* mark the mount point hook in the vp but not drop the ref yet */
	if ((coveredvp = mp->mnt_vnodecovered) != NULLVP) {
		/*
		 * The covered vnode needs special handling. Trying to get an
		 * iocount must not block here as this may lead to deadlocks
		 * if the Filesystem to which the covered vnode belongs is
		 * undergoing forced unmounts. Since we hold a usecount, the
		 * vnode cannot be reused (it can, however, still be terminated)
		 */
		FUNC39(coveredvp);
		FUNC42(coveredvp);

		mp->mnt_crossref++;
		coveredvp->v_mountedhere = (struct mount *)0;
		FUNC0(coveredvp->v_flag, VMOUNT);

		FUNC46(coveredvp);
		FUNC43(coveredvp);
	}

	FUNC21();
	mp->mnt_vtable->vfc_refcount--;
	FUNC23();

	FUNC9(mp);	/* remove cache entries for this file sys */
	FUNC36(NULL, VQ_UNMOUNT, (intptr_t)NULL);
	FUNC24(mp);
	mp->mnt_lflag |= MNT_LDEAD;

	if (mp->mnt_lflag & MNT_LWAIT) {
	        /*
		 * do the wakeup here
		 * in case we block in mount_refdrain
		 * which will drop the mount lock
		 * and allow anyone blocked in vfs_busy
		 * to wakeup and see the LDEAD state
		 */
		mp->mnt_lflag &= ~MNT_LWAIT;
		FUNC47((caddr_t)mp);
	}
	FUNC26(mp);
out:
	if (mp->mnt_lflag & MNT_LWAIT) {
		mp->mnt_lflag &= ~MNT_LWAIT;
		needwakeup = 1;
	}

#if CONFIG_TRIGGERS
	if (flags & MNT_NOBLOCK && p != kernproc) {
	 	// Restore P_NOREMOTEHANG bit to its previous value
		if ((pflags_save & P_NOREMOTEHANG) == 0)
			OSBitAndAtomic(~((uint32_t) P_NOREMOTEHANG), &p->p_flag);
	}

	/*
	 * Callback and context are set together under the mount lock, and
	 * never cleared, so we're safe to examine them here, drop the lock,
	 * and call out.
	 */
	if (mp->mnt_triggercallback != NULL) {
		mount_unlock(mp);
		if (error == 0) {
			mp->mnt_triggercallback(mp, VTC_RELEASE, mp->mnt_triggerdata, ctx);
		} else if (did_vflush) {
			mp->mnt_triggercallback(mp, VTC_REPLACE, mp->mnt_triggerdata, ctx);
		}
	} else {
		mount_unlock(mp);
	}
#else
	FUNC27(mp);
#endif /* CONFIG_TRIGGERS */

	FUNC13(&mp->mnt_rwlock);

	if (needwakeup)
		FUNC47((caddr_t)mp);

	if (!error) {
		if ((coveredvp != NULLVP)) {
			vnode_t pvp = NULLVP;

			/*
			 * The covered vnode needs special handling. Trying to
			 * get an iocount must not block here as this may lead
			 * to deadlocks if the Filesystem to which the covered
			 * vnode belongs is undergoing forced unmounts. Since we
			 * hold a usecount, the  vnode cannot be reused
			 * (it can, however, still be terminated).
			 */
			FUNC39(coveredvp);

			FUNC18(mp, coveredvp, 0);
			/*
			 * We'll _try_ to detect if this really needs to be
			 * done. The coveredvp can only be in termination (or
			 * terminated) if the coveredvp's mount point is in a
			 * forced unmount (or has been) since we still hold the
			 * ref.
			 */
			if (!FUNC41(coveredvp)) {
				pvp = FUNC40(coveredvp);
#if CONFIG_TRIGGERS
				if (coveredvp->v_resolve) {
					vnode_trigger_rearm(coveredvp, ctx);
				}
#endif
			}

			FUNC44(coveredvp);
			FUNC43(coveredvp);
			coveredvp = NULLVP;

			if (pvp) {
				FUNC15(pvp, NOTE_WRITE);
				FUNC43(pvp);
			}
		} else if (mp->mnt_flag & MNT_ROOTFS) {
				FUNC25(mp);
#if CONFIG_MACF
				mac_mount_label_destroy(mp);
#endif
				FUNC1((caddr_t)mp, sizeof (struct mount), M_MOUNT);
		} else
			FUNC30("dounmount: no coveredvp");
	}
	return (error);
}