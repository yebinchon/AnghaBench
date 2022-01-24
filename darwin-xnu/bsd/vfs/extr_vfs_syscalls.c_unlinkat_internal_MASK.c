#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct vnode_attr {int dummy; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_nameptr; } ;
struct nameidata {int ni_flag; TYPE_1__* ni_vp; struct componentname ni_cnd; TYPE_1__* ni_dvp; } ;
struct TYPE_26__ {int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ fse_info ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_25__ {int v_flag; scalar_t__ v_parent; } ;

/* Variables and functions */
 int AUDITVNPATH1 ; 
 int CN_ALLOWRSRCFORK ; 
 int CN_WANTSRSRCFORK ; 
 int /*<<< orphan*/  DELETE ; 
 int EBUSY ; 
 int EISDIR ; 
 int EKEEPLOOKING ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FSE_ARG_DONE ; 
 int /*<<< orphan*/  FSE_ARG_FINFO ; 
 int /*<<< orphan*/  FSE_ARG_STRING ; 
 int /*<<< orphan*/  FSE_DELETE ; 
 int /*<<< orphan*/  FSE_TRUNCATED_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  KAUTH_FILEOP_DELETE ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int MAX_AUTHORIZE_ENOENT_RETRIES ; 
 int NAMEI_COMPOUNDREMOVE ; 
 int NAMEI_CONTLOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  OP_UNLINK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int USEDVP ; 
 int VISHARDLINK ; 
 int VNODE_REMOVE_NODELETEBUSY ; 
 int VNODE_REMOVE_NO_AUDIT_PATH ; 
 int VNODE_REMOVE_SKIP_NAMESPACE_EVENT ; 
 int /*<<< orphan*/  VNODE_UPDATE_PARENT ; 
 int VROOT ; 
 int /*<<< orphan*/  XATTR_RESOURCEFORK_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,uintptr_t) ; 
 int FUNC7 () ; 
 int FUNC8 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nameidata*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct vnode_attr*) ; 
 int FUNC16 (TYPE_1__*,TYPE_1__*,struct componentname*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_1__*,TYPE_1__**,struct nameidata*,int,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,TYPE_2__*,struct vnode_attr*) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 scalar_t__ FUNC21 (TYPE_1__*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 scalar_t__ FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int FUNC26 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(vfs_context_t ctx, int fd, vnode_t start_dvp,
    user_addr_t path_arg, enum uio_seg segflg, int unlink_flags)
{
	struct nameidata nd;
	vnode_t	vp, dvp;
	int error;
	struct componentname *cnp;
	char  *path = NULL;
	int  len=0;
#if CONFIG_FSE
	fse_info  finfo;
	struct vnode_attr va;
#endif
	int flags;
	int need_event;
	int has_listeners;
	int truncated_path;
	int batched;
	struct vnode_attr *vap;
	int do_retry;
	int retry_count = 0;
	int cn_flags;

	cn_flags = LOCKPARENT;
	if (!(unlink_flags & VNODE_REMOVE_NO_AUDIT_PATH))
		cn_flags |= AUDITVNPATH1;
	/* If a starting dvp is passed, it trumps any fd passed. */
	if (start_dvp)
		cn_flags |= USEDVP;

#if NAMEDRSRCFORK
	/* unlink or delete is allowed on rsrc forks and named streams */
	cn_flags |= CN_ALLOWRSRCFORK;
#endif

retry:
	do_retry = 0;
	flags = 0;
	need_event = 0;
	has_listeners = 0;
	truncated_path = 0;
	vap = NULL;

	FUNC1(&nd, DELETE, OP_UNLINK, cn_flags, segflg, path_arg, ctx);

	nd.ni_dvp = start_dvp;
	nd.ni_flag |= NAMEI_COMPOUNDREMOVE;
	cnp = &nd.ni_cnd;

continue_lookup:
	error = FUNC8(&nd, fd);
	if (error)
		return (error);

	dvp = nd.ni_dvp;
	vp = nd.ni_vp;


	/* With Carbon delete semantics, busy files cannot be deleted */
	if (unlink_flags & VNODE_REMOVE_NODELETEBUSY) {
		flags |= VNODE_REMOVE_NODELETEBUSY;
	}

	/* Skip any potential upcalls if told to. */
	if (unlink_flags & VNODE_REMOVE_SKIP_NAMESPACE_EVENT) {
		flags |= VNODE_REMOVE_SKIP_NAMESPACE_EVENT;
	}

	if (vp) {
		batched = FUNC18(vp);
		/*
		 * The root of a mounted filesystem cannot be deleted.
		 */
		if (vp->v_flag & VROOT) {
			error = EBUSY;
		}

#if DEVELOPMENT || DEBUG
	/*
	 * XXX VSWAP: Check for entitlements or special flag here
	 * so we can restrict access appropriately.
	 */
#else /* DEVELOPMENT || DEBUG */

		if (FUNC23(vp) && (ctx != FUNC13())) {
			error = EPERM;
			goto out;
		}
#endif /* DEVELOPMENT || DEBUG */

		if (!batched) {
			error = FUNC16(dvp, vp, cnp, ctx, NULL);
			if (error) {
				if (error == ENOENT) {
					FUNC4(retry_count < MAX_AUTHORIZE_ENOENT_RETRIES);
					if (retry_count < MAX_AUTHORIZE_ENOENT_RETRIES) {
						do_retry = 1;
						retry_count++;
					}
				}
				goto out;
			}
		}
	} else {
		batched = 1;

		if (!FUNC18(dvp)) {
			FUNC11("No vp, but no compound remove?");
		}
	}

#if CONFIG_FSE
	need_event = need_fsevent(FSE_DELETE, dvp);
	if (need_event) {
		if (!batched) {
			if ((vp->v_flag & VISHARDLINK) == 0) {
				/* XXX need to get these data in batched VNOP */
				get_fse_info(vp, &finfo, ctx);
			}
		} else {
			error = vfs_get_notify_attributes(&va);
			if (error) {
				goto out;
			}

			vap = &va;
		}
	}
#endif
	has_listeners = FUNC7();
	if (need_event || has_listeners) {
		if (path == NULL) {
			FUNC0(path);
			if (path == NULL) {
				error = ENOMEM;
				goto out;
			}
		}
		len = FUNC12(dvp, nd.ni_cnd.cn_nameptr, path, MAXPATHLEN, &truncated_path);
	}

#if NAMEDRSRCFORK
	if (nd.ni_cnd.cn_flags & CN_WANTSRSRCFORK)
		error = vnode_removenamedstream(dvp, vp, XATTR_RESOURCEFORK_NAME, 0, ctx);
	else
#endif
	{
		error = FUNC17(dvp, &nd.ni_vp, &nd, flags, vap, ctx);
		vp = nd.ni_vp;
		if (error == EKEEPLOOKING) {
			if (!batched) {
				FUNC11("EKEEPLOOKING, but not a filesystem that supports compound VNOPs?");
			}

			if ((nd.ni_flag & NAMEI_CONTLOOKUP) == 0) {
				FUNC11("EKEEPLOOKING, but continue flag not set?");
			}

			if (FUNC20(vp)) {
				error = EISDIR;
				goto out;
			}
			goto continue_lookup;
		} else if (error == ENOENT && batched) {
			FUNC4(retry_count < MAX_AUTHORIZE_ENOENT_RETRIES);
			if (retry_count < MAX_AUTHORIZE_ENOENT_RETRIES) {
				/*
				 * For compound VNOPs, the authorization callback may
				 * return ENOENT in case of racing hardlink lookups
				 * hitting the name  cache, redrive the lookup.
				 */
				do_retry = 1;
				retry_count += 1;
				goto out;
			}
		}
	}

	/*
	 * Call out to allow 3rd party notification of delete.
	 * Ignore result of kauth_authorize_fileop call.
	 */
	if (!error) {
		if (has_listeners) {
			FUNC6(FUNC14(ctx),
				KAUTH_FILEOP_DELETE,
				(uintptr_t)vp,
				(uintptr_t)path);
		}

		if (vp->v_flag & VISHARDLINK) {
		    //
		    // if a hardlink gets deleted we want to blow away the
		    // v_parent link because the path that got us to this
		    // instance of the link is no longer valid.  this will
		    // force the next call to get the path to ask the file
		    // system instead of just following the v_parent link.
		    //
		    FUNC27(vp, NULL, NULL, 0, 0, VNODE_UPDATE_PARENT);
		}

#if CONFIG_FSE
		if (need_event) {
			if (vp->v_flag & VISHARDLINK) {
				get_fse_info(vp, &finfo, ctx);
			} else if (vap) {
				vnode_get_fse_info_from_vap(vp, &finfo, vap);
			}
			if (truncated_path) {
				finfo.mode |= FSE_TRUNCATED_PATH;
			}
			add_fsevent(FSE_DELETE, ctx,
						FSE_ARG_STRING, len, path,
						FSE_ARG_FINFO, &finfo,
						FSE_ARG_DONE);
		}
#endif
	}

out:
	if (path != NULL)
		FUNC2(path);

#if NAMEDRSRCFORK
	/* recycle the deleted rsrc fork vnode to force a reclaim, which
	 * will cause its shadow file to go away if necessary.
	 */
	 if (vp && (vnode_isnamedstream(vp)) &&
		(vp->v_parent != NULLVP) &&
		vnode_isshadow(vp)) {
   			vnode_recycle(vp);
	 }
#endif
	/*
	 * nameidone has to happen before we vnode_put(dvp)
	 * since it may need to release the fs_nodelock on the dvp
	 */
	FUNC9(&nd);
	FUNC24(dvp);
	if (vp) {
		FUNC24(vp);
	}

	if (do_retry) {
		goto retry;
	}

	return (error);
}