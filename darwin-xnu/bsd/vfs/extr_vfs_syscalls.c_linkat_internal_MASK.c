#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_13__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct vnode_attr {scalar_t__ va_uid; } ;
struct TYPE_23__ {int cn_flags; int /*<<< orphan*/  cn_nameptr; int /*<<< orphan*/  cn_nameiop; } ;
struct nameidata {TYPE_13__ ni_cnd; TYPE_2__* ni_vp; TYPE_2__* ni_dvp; int /*<<< orphan*/  ni_dirp; int /*<<< orphan*/  ni_op; } ;
struct TYPE_26__ {int /*<<< orphan*/  mode; } ;
typedef  TYPE_3__ fse_info ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_25__ {scalar_t__ v_type; int v_parent; TYPE_1__* v_mount; } ;
struct TYPE_24__ {int /*<<< orphan*/  mnt_kern_flag; } ;

/* Variables and functions */
 int AT_SYMLINK_FOLLOW ; 
 int AUDITVNPATH1 ; 
 int AUDITVNPATH2 ; 
 int CN_NBMOUNTLOOK ; 
 int /*<<< orphan*/  CREATE ; 
 int EACCES ; 
 int EEXIST ; 
 int ENOMEM ; 
 int EPERM ; 
 int EXDEV ; 
 int FOLLOW ; 
 int /*<<< orphan*/  FSE_ARG_DONE ; 
 int /*<<< orphan*/  FSE_ARG_FINFO ; 
 int /*<<< orphan*/  FSE_ARG_STRING ; 
 int /*<<< orphan*/  FSE_ARG_VNODE ; 
 int /*<<< orphan*/  FSE_CREATE_FILE ; 
 int /*<<< orphan*/  FSE_STAT_CHANGED ; 
 int /*<<< orphan*/  FSE_TRUNCATED_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KAUTH_FILEOP_LINK ; 
 int /*<<< orphan*/  KAUTH_VNODE_ADD_FILE ; 
 int /*<<< orphan*/  KAUTH_VNODE_LINKTARGET ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  LOOKUP ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MNTK_DIR_HARDLINKS ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NOFOLLOW ; 
 TYPE_2__* NULLVP ; 
 int /*<<< orphan*/  OP_LINK ; 
 int /*<<< orphan*/  OP_LOOKUP ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ VDIR ; 
 int FUNC7 (TYPE_2__*,TYPE_2__*,TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,uintptr_t) ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,TYPE_13__*) ; 
 int FUNC16 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nameidata*) ; 
 int FUNC18 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_2__*,char*,int*) ; 
 int FUNC22 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (TYPE_2__*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC26(vfs_context_t ctx, int fd1, user_addr_t path, int fd2,
    user_addr_t link, int flag, enum uio_seg segflg)
{
	vnode_t	vp, dvp, lvp;
	struct nameidata nd;
	int follow;
	int error;
#if CONFIG_FSE
	fse_info finfo;
#endif
	int need_event, has_listeners;
	char *target_path = NULL;
	int truncated=0;

	vp = dvp = lvp = NULLVP;

	/* look up the object we are linking to */
	follow = (flag & AT_SYMLINK_FOLLOW) ? FOLLOW : NOFOLLOW;
	FUNC2(&nd, LOOKUP, OP_LOOKUP, AUDITVNPATH1 | follow,
	    segflg, path, ctx);

	error = FUNC16(&nd, fd1);
	if (error)
		return (error);
	vp = nd.ni_vp;

	FUNC17(&nd);

	/*
	 * Normally, linking to directories is not supported.
	 * However, some file systems may have limited support.
	 */
	if (vp->v_type == VDIR) {
		if (!FUNC1(vp->v_mount->mnt_kern_flag, MNTK_DIR_HARDLINKS)) {
			error = EPERM;   /* POSIX */
			goto out;
		}

		/* Linking to a directory requires ownership. */
		if (!FUNC13(FUNC20(ctx))) {
			struct vnode_attr dva;

			FUNC4(&dva);
			FUNC6(&dva, va_uid);
			if (FUNC23(vp, &dva, ctx) != 0 ||
			    !FUNC5(&dva, va_uid) ||
			    (dva.va_uid != FUNC12(FUNC20(ctx)))) {
				error = EACCES;
				goto out;
			}
		}
	}

	/* lookup the target node */
#if CONFIG_TRIGGERS
	nd.ni_op = OP_LINK;
#endif
	nd.ni_cnd.cn_nameiop = CREATE;
	nd.ni_cnd.cn_flags = LOCKPARENT | AUDITVNPATH2 | CN_NBMOUNTLOOK;
	nd.ni_dirp = link;
	error = FUNC16(&nd, fd2);
	if (error != 0)
		goto out;
	dvp = nd.ni_dvp;
	lvp = nd.ni_vp;

#if CONFIG_MACF
	if ((error = mac_vnode_check_link(ctx, dvp, vp, &nd.ni_cnd)) != 0)
		goto out2;
#endif

  	/* or to anything that kauth doesn't want us to (eg. immutable items) */
  	if ((error = FUNC22(vp, NULL, KAUTH_VNODE_LINKTARGET, ctx)) != 0)
 		goto out2;

	/* target node must not exist */
	if (lvp != NULLVP) {
		error = EEXIST;
		goto out2;
	}
  	/* cannot link across mountpoints */
  	if (FUNC24(vp) != FUNC24(dvp)) {
  		error = EXDEV;
  		goto out2;
  	}

  	/* authorize creation of the target note */
  	if ((error = FUNC22(dvp, NULL, KAUTH_VNODE_ADD_FILE, ctx)) != 0)
  		goto out2;

	/* and finally make the link */
	error = FUNC7(vp, dvp, &nd.ni_cnd, ctx);
	if (error)
		goto out2;

#if CONFIG_MACF
	(void)mac_vnode_notify_link(ctx, vp, dvp, &nd.ni_cnd);
#endif

#if CONFIG_FSE
	need_event = need_fsevent(FSE_CREATE_FILE, dvp);
#else
	need_event = 0;
#endif
	has_listeners = FUNC11();

	if (need_event || has_listeners) {
		char *link_to_path = NULL;
		int len, link_name_len;

		/* build the path to the new link file */
		FUNC0(target_path);
		if (target_path == NULL) {
			error = ENOMEM;
			goto out2;
		}

		len = FUNC19(dvp, nd.ni_cnd.cn_nameptr, target_path, MAXPATHLEN, &truncated);

		if (has_listeners) {
		        /* build the path to file we are linking to */
			FUNC0(link_to_path);
			if (link_to_path == NULL) {
				error = ENOMEM;
				goto out2;
			}

			link_name_len = MAXPATHLEN;
			if (FUNC21(vp, link_to_path, &link_name_len) == 0) {
				/*
				 * Call out to allow 3rd party notification of rename.
				 * Ignore result of kauth_authorize_fileop call.
				 */
				FUNC10(FUNC20(ctx), KAUTH_FILEOP_LINK,
						       (uintptr_t)link_to_path,
						       (uintptr_t)target_path);
			}
			if (link_to_path != NULL) {
				FUNC3(link_to_path);
			}
		}
#if CONFIG_FSE
		if (need_event) {
		        /* construct fsevent */
		        if (get_fse_info(vp, &finfo, ctx) == 0) {
				if (truncated) {
					finfo.mode |= FSE_TRUNCATED_PATH;
				}

			        // build the path to the destination of the link
			        add_fsevent(FSE_CREATE_FILE, ctx,
					    FSE_ARG_STRING, len, target_path,
					    FSE_ARG_FINFO, &finfo,
					    FSE_ARG_DONE);
			}
			if (vp->v_parent) {
			    add_fsevent(FSE_STAT_CHANGED, ctx,
				FSE_ARG_VNODE, vp->v_parent,
				FSE_ARG_DONE);
			}
		}
#endif
	}
out2:
	/*
	 * nameidone has to happen before we vnode_put(dvp)
	 * since it may need to release the fs_nodelock on the dvp
	 */
	FUNC17(&nd);
	if (target_path != NULL) {
		FUNC3(target_path);
	}
out:
	if (lvp)
		FUNC25(lvp);
	if (dvp)
		FUNC25(dvp);
	FUNC25(vp);
	return (error);
}