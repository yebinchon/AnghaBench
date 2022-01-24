#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_13__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct vnode_attr {int dummy; } ;
struct TYPE_22__ {int /*<<< orphan*/  cn_nameptr; } ;
struct nameidata {TYPE_1__* ni_vp; TYPE_13__ ni_cnd; TYPE_1__* ni_dvp; int /*<<< orphan*/  ni_flag; } ;
struct TYPE_24__ {int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ fse_info ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_23__ {int v_flag; } ;

/* Variables and functions */
 int AUDITVNPATH1 ; 
 int /*<<< orphan*/  DELETE ; 
 int EBUSY ; 
 int EKEEPLOOKING ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOTEMPTY ; 
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
 int /*<<< orphan*/  NAMEI_COMPOUNDRMDIR ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* NULLVP ; 
 int /*<<< orphan*/  OP_RMDIR ; 
 int /*<<< orphan*/  PVFS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int VISHARDLINK ; 
 int /*<<< orphan*/  VNODE_UPDATE_PARENT ; 
 int VROOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,uintptr_t) ; 
 int FUNC7 () ; 
 int FUNC8 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nameidata*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct vnode_attr*) ; 
 int FUNC18 (TYPE_1__*,TYPE_1__*,TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_1__*,TYPE_1__**,struct nameidata*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,TYPE_2__*,struct vnode_attr*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC26(vfs_context_t ctx, int fd, user_addr_t dirpath,
    enum uio_seg segflg)
{
	vnode_t vp, dvp;
	int error;
	struct nameidata nd;
	char     *path = NULL;
	int       len=0;
	int has_listeners = 0;
	int need_event = 0;
	int truncated = 0;
#if CONFIG_FSE
	struct vnode_attr va;
#endif /* CONFIG_FSE */
	struct vnode_attr *vap = NULL;
	int restart_count = 0;
	int batched;

	int restart_flag;

	/*
	 * This loop exists to restart rmdir in the unlikely case that two
	 * processes are simultaneously trying to remove the same directory
	 * containing orphaned appleDouble files.
	 */
	do {
		FUNC1(&nd, DELETE, OP_RMDIR, LOCKPARENT | AUDITVNPATH1,
		    segflg, dirpath, ctx);
		nd.ni_flag = NAMEI_COMPOUNDRMDIR;
continue_lookup:
		restart_flag = 0;
		vap = NULL;

		error = FUNC8(&nd, fd);
		if (error)
			return (error);

		dvp = nd.ni_dvp;
		vp = nd.ni_vp;

		if (vp) {
			batched = FUNC20(vp);

			if (vp->v_flag & VROOT) {
				/*
				 * The root of a mounted filesystem cannot be deleted.
				 */
				error = EBUSY;
				goto out;
			}

#if DEVELOPMENT || DEBUG
			/*
	 		 * XXX VSWAP: Check for entitlements or special flag here
	 		 * so we can restrict access appropriately.
	 		 */
#else /* DEVELOPMENT || DEBUG */

			if (FUNC22(vp) && (ctx != FUNC15())) {
				error = EPERM;
				goto out;
			}
#endif /* DEVELOPMENT || DEBUG */

			/*
			 * Removed a check here; we used to abort if vp's vid
			 * was not the same as what we'd seen the last time around.
			 * I do not think that check was valid, because if we retry
			 * and all dirents are gone, the directory could legitimately
			 * be recycled but still be present in a situation where we would
			 * have had permission to delete.  Therefore, we won't make
			 * an effort to preserve that check now that we may not have a
			 * vp here.
			 */

			if (!batched) {
				error = FUNC18(dvp, vp, &nd.ni_cnd, ctx, NULL);
				if (error) {
					if (error == ENOENT) {
						FUNC4(restart_count < MAX_AUTHORIZE_ENOENT_RETRIES);
						if (restart_count < MAX_AUTHORIZE_ENOENT_RETRIES) {
							restart_flag = 1;
							restart_count += 1;
						}
					}
					goto out;
				}
			}
		} else {
			batched = 1;

			if (!FUNC20(dvp)) {
				FUNC11("No error, but no compound rmdir?");
			}
		}

#if CONFIG_FSE
		fse_info  finfo;

		need_event = need_fsevent(FSE_DELETE, dvp);
		if (need_event) {
			if (!batched) {
				get_fse_info(vp, &finfo, ctx);
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

			len = FUNC13(dvp, nd.ni_cnd.cn_nameptr, path, MAXPATHLEN, &truncated);
#if CONFIG_FSE
			if (truncated) {
				finfo.mode |= FSE_TRUNCATED_PATH;
			}
#endif
		}

		error = FUNC19(dvp, &vp, &nd, vap, ctx);
		nd.ni_vp = vp;
		if (vp == NULLVP) {
			/* Couldn't find a vnode */
			goto out;
		}

		if (error == EKEEPLOOKING) {
			goto continue_lookup;
		} else if (batched && error == ENOENT) {
			FUNC4(restart_count < MAX_AUTHORIZE_ENOENT_RETRIES);
			if (restart_count < MAX_AUTHORIZE_ENOENT_RETRIES) {
				/*
				 * For compound VNOPs, the authorization callback
				 * may return ENOENT in case of racing hard link lookups
				 * redrive the lookup.
				 */
				restart_flag = 1;
				restart_count += 1;
				goto out;
			}
		}
#if CONFIG_APPLEDOUBLE
		/*
		 * Special case to remove orphaned AppleDouble
		 * files. I don't like putting this in the kernel,
		 * but carbon does not like putting this in carbon either,
		 * so here we are.
		 */
		if (error == ENOTEMPTY) {
			error = rmdir_remove_orphaned_appleDouble(vp, ctx, &restart_flag);
			if (error == EBUSY) {
				goto out;
			}


			/*
			 * Assuming everything went well, we will try the RMDIR again
			 */
			if (!error)
				error = vn_rmdir(dvp, &vp, &nd, vap, ctx);
		}
#endif /* CONFIG_APPLEDOUBLE */
		/*
		 * Call out to allow 3rd party notification of delete.
		 * Ignore result of kauth_authorize_fileop call.
		 */
		if (!error) {
			if (has_listeners) {
				FUNC6(FUNC16(ctx),
						KAUTH_FILEOP_DELETE,
						(uintptr_t)vp,
						(uintptr_t)path);
			}

			if (vp->v_flag & VISHARDLINK) {
				// see the comment in unlink1() about why we update
				// the parent of a hard link when it is removed
				FUNC24(vp, NULL, NULL, 0, 0, VNODE_UPDATE_PARENT);
			}

#if CONFIG_FSE
			if (need_event) {
				if (vap) {
					vnode_get_fse_info_from_vap(vp, &finfo, vap);
				}
				add_fsevent(FSE_DELETE, ctx,
						FSE_ARG_STRING, len, path,
						FSE_ARG_FINFO, &finfo,
						FSE_ARG_DONE);
			}
#endif
		}

out:
		if (path != NULL) {
			FUNC2(path);
			path = NULL;
		}
		/*
		 * nameidone has to happen before we vnode_put(dvp)
		 * since it may need to release the fs_nodelock on the dvp
		 */
		FUNC9(&nd);
		FUNC23(dvp);

		if (vp)
			FUNC23(vp);

		if (restart_flag == 0) {
			FUNC25((caddr_t)vp);
			return (error);
		}
		FUNC14(vp, PVFS, "rm AD", 1);

	} while (restart_flag != 0);

	return (error);

}