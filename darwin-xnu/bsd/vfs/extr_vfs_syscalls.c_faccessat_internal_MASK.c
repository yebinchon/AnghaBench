#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;
struct TYPE_11__ {int /*<<< orphan*/  cn_flags; } ;
struct nameidata {TYPE_3__* ni_dvp; TYPE_3__* ni_vp; TYPE_1__ ni_cnd; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_13__ {scalar_t__ v_parent; } ;
struct TYPE_12__ {int /*<<< orphan*/  vc_thread; int /*<<< orphan*/  vc_ucred; } ;

/* Variables and functions */
 int AT_EACCESS ; 
 int AUDITVNPATH1 ; 
 int /*<<< orphan*/  CN_ALLOWRSRCFORK ; 
 int FOLLOW ; 
 int F_OK ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct vfs_context*) ; 
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  OP_ACCESS ; 
 int WANTPARENT ; 
 int _DELETE_OK ; 
 int FUNC1 (TYPE_3__*,TYPE_3__*,int,struct vfs_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nameidata*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC12(vfs_context_t ctx, int fd, user_addr_t path, int amode,
    int flag, enum uio_seg segflg)
{
	int error;
	struct nameidata nd;
 	int niopts;
	struct vfs_context context;
#if NAMEDRSRCFORK
	int is_namedstream = 0;
#endif

 	/*
	 * Unless the AT_EACCESS option is used, Access is defined as checking
	 * against the process' real identity, even if operations are checking
	 * the effective identity.  So we need to tweak the credential
 	 * in the context for that case.
 	 */
	if (!(flag & AT_EACCESS))
		context.vc_ucred = FUNC2(FUNC3());
	else
		context.vc_ucred = ctx->vc_ucred;
	context.vc_thread = ctx->vc_thread;


	niopts = FOLLOW | AUDITVNPATH1;
 	/* need parent for vnode_authorize for deletion test */
 	if (amode & _DELETE_OK)
 		niopts |= WANTPARENT;
 	FUNC0(&nd, LOOKUP, OP_ACCESS, niopts, segflg,
	       path, &context);

#if NAMEDRSRCFORK
	/* access(F_OK) calls are allowed for resource forks. */
	if (amode == F_OK)
		nd.ni_cnd.cn_flags |= CN_ALLOWRSRCFORK;
#endif
 	error = FUNC5(&nd, fd);
 	if (error)
 		goto out;

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

	error = FUNC1(nd.ni_vp, nd.ni_dvp, amode, &context);

#if NAMEDRSRCFORK
	if (is_namedstream) {
		vnode_rele(nd.ni_vp);
	}
#endif

 	FUNC9(nd.ni_vp);
	if (amode & _DELETE_OK)
 		FUNC9(nd.ni_dvp);
  	FUNC6(&nd);

out:
	if (!(flag & AT_EACCESS))
		FUNC4(&context.vc_ucred);
	return (error);
}