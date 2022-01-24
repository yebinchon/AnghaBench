#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct user64_stat64 {int dummy; } ;
struct user64_stat {int dummy; } ;
struct user32_stat64 {int dummy; } ;
struct user32_stat {int dummy; } ;
struct stat64 {long long* st_qspare; int st_nlink; int /*<<< orphan*/  st_mode; scalar_t__ st_lspare; } ;
struct stat {long long* st_qspare; int st_nlink; int /*<<< orphan*/  st_mode; scalar_t__ st_lspare; } ;
struct TYPE_8__ {int /*<<< orphan*/  cn_flags; } ;
struct nameidata {TYPE_2__* ni_vp; TYPE_1__ ni_cnd; } ;
typedef  scalar_t__ kauth_filesec_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  scalar_t__ caddr_t ;
struct TYPE_9__ {scalar_t__ v_parent; } ;

/* Variables and functions */
 int AT_SYMLINK_NOFOLLOW ; 
 int AUDITVNPATH1 ; 
 int /*<<< orphan*/  CN_ALLOWRSRCFORK ; 
 int EFAULT ; 
 int FOLLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ KAUTH_FILESEC_NONE ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NOFOLLOW ; 
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  OP_GETATTR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct stat*,struct user32_stat*) ; 
 int /*<<< orphan*/  FUNC8 (struct stat64*,struct user32_stat64*) ; 
 int /*<<< orphan*/  FUNC9 (struct stat*,struct user64_stat*) ; 
 int /*<<< orphan*/  FUNC10 (struct stat64*,struct user64_stat64*) ; 
 int FUNC11 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nameidata*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,void*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC21(vfs_context_t ctx, user_addr_t path, user_addr_t ub,
    user_addr_t xsecurity, user_addr_t xsecurity_size, int isstat64,
    enum uio_seg segflg, int fd, int flag)
{
	struct nameidata nd;
	int follow;
	union {
		struct stat sb;
		struct stat64 sb64;
	} source = {};
	union {
		struct user64_stat user64_sb;
		struct user32_stat user32_sb;
		struct user64_stat64 user64_sb64;
		struct user32_stat64 user32_sb64;
	} dest = {};
	caddr_t sbp;
	int error, my_size;
	kauth_filesec_t fsec;
	size_t xsecurity_bufsize;
	void * statptr;

	follow = (flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW : FOLLOW;
	FUNC2(&nd, LOOKUP, OP_GETATTR, follow | AUDITVNPATH1,
	    segflg, path, ctx);

#if NAMEDRSRCFORK
	int is_namedstream = 0;
	/* stat calls are allowed for resource forks. */
	nd.ni_cnd.cn_flags |= CN_ALLOWRSRCFORK;
#endif
	error = FUNC11(&nd, fd);
	if (error)
		return (error);
	fsec = KAUTH_FILESEC_NONE;

	statptr = (void *)&source;

#if NAMEDRSRCFORK
	/* Grab reference on the shadow stream file vnode to
	 * force an inactive on release which will mark it
	 * for recycle.
	 */
	if (vnode_isnamedstream(nd.ni_vp) &&
	    (nd.ni_vp->v_parent != NULLVP) &&
	    vnode_isshadow(nd.ni_vp)) {
		is_namedstream = 1;
		vnode_ref(nd.ni_vp);
	}
#endif

	error = FUNC15(nd.ni_vp, statptr, (xsecurity != USER_ADDR_NULL ? &fsec : NULL), isstat64, ctx);

#if NAMEDRSRCFORK
	if (is_namedstream) {
		vnode_rele(nd.ni_vp);
	}
#endif
	FUNC18(nd.ni_vp);
	FUNC12(&nd);

	if (error)
		return (error);
	/* Zap spare fields */
	if (isstat64 != 0) {
		source.sb64.st_lspare = 0;
		source.sb64.st_qspare[0] = 0LL;
		source.sb64.st_qspare[1] = 0LL;
		if (FUNC0(FUNC14(ctx))) {
			FUNC10(&source.sb64, &dest.user64_sb64);
			my_size = sizeof(dest.user64_sb64);
			sbp = (caddr_t)&dest.user64_sb64;
		} else {
			FUNC8(&source.sb64, &dest.user32_sb64);
			my_size = sizeof(dest.user32_sb64);
			sbp = (caddr_t)&dest.user32_sb64;
		}
		/*
		 * Check if we raced (post lookup) against the last unlink of a file.
		 */
		if ((source.sb64.st_nlink == 0) && FUNC3(source.sb64.st_mode)) {
			source.sb64.st_nlink = 1;
		}
	} else {
		source.sb.st_lspare = 0;
		source.sb.st_qspare[0] = 0LL;
		source.sb.st_qspare[1] = 0LL;
		if (FUNC0(FUNC14(ctx))) {
			FUNC9(&source.sb, &dest.user64_sb);
			my_size = sizeof(dest.user64_sb);
			sbp = (caddr_t)&dest.user64_sb;
		} else {
			FUNC7(&source.sb, &dest.user32_sb);
			my_size = sizeof(dest.user32_sb);
			sbp = (caddr_t)&dest.user32_sb;
		}

		/*
		 * Check if we raced (post lookup) against the last unlink of a file.
		 */
		if ((source.sb.st_nlink == 0) && FUNC3(source.sb.st_mode)) {
			source.sb.st_nlink = 1;
		}
	}
	if ((error = FUNC4(sbp, ub, my_size)) != 0)
		goto out;

	/* caller wants extended security information? */
	if (xsecurity != USER_ADDR_NULL) {

		/* did we get any? */
		if (fsec == KAUTH_FILESEC_NONE) {
			if (FUNC13(xsecurity_size, 0) != 0) {
				error = EFAULT;
				goto out;
			}
		} else {
			/* find the user buffer size */
			xsecurity_bufsize = FUNC5(xsecurity_size);

			/* copy out the actual data size */
			if (FUNC13(xsecurity_size, FUNC1(fsec)) != 0) {
				error = EFAULT;
				goto out;
			}

			/* if the caller supplied enough room, copy out to it */
			if (xsecurity_bufsize >= FUNC1(fsec))
				error = FUNC4(fsec, xsecurity, FUNC1(fsec));
		}
	}
out:
	if (fsec != KAUTH_FILESEC_NONE)
		FUNC6(fsec);
	return (error);
}