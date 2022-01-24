#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vnode_attr {int dummy; } ;
struct open_extended_args {scalar_t__ xsecurity; int mode; int /*<<< orphan*/  flags; int /*<<< orphan*/  path; int /*<<< orphan*/ * gid; int /*<<< orphan*/ * uid; } ;
struct nameidata {int dummy; } ;
struct filedesc {int fd_cmask; } ;
typedef  TYPE_1__* proc_t ;
typedef  TYPE_2__* kauth_filesec_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  fsec_acl; } ;
struct TYPE_6__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int ALLPERMS ; 
 int AUDITVNPATH1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FOLLOW ; 
 int /*<<< orphan*/ * KAUTH_GID_NONE ; 
 int /*<<< orphan*/ * KAUTH_UID_NONE ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_OPEN ; 
 int S_ISTXT ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 scalar_t__ USER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fileproc_alloc_init ; 
 int FUNC4 (scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nameidata*,int /*<<< orphan*/ ,struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  owner ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(proc_t p, struct open_extended_args *uap, int32_t *retval)
{
	struct filedesc *fdp = p->p_fd;
	int ciferror;
	kauth_filesec_t xsecdst;
	struct vnode_attr va;
	struct nameidata nd;
	int cmode;

	FUNC0(owner, uap->uid, uap->gid);

	xsecdst = NULL;
	if ((uap->xsecurity != USER_ADDR_NULL) &&
	    ((ciferror = FUNC4(uap->xsecurity, &xsecdst)) != 0))
		return ciferror;

	FUNC2(&va);
	cmode = ((uap->mode &~ fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT;
	FUNC3(&va, va_mode, cmode);
	if (uap->uid != KAUTH_UID_NONE)
		FUNC3(&va, va_uid, *uap->uid);
	if (uap->gid != KAUTH_GID_NONE)
		FUNC3(&va, va_gid, *uap->gid);
	if (xsecdst != NULL)
		FUNC3(&va, va_acl, xsecdst->fsec_acl);

	FUNC1(&nd, LOOKUP, OP_OPEN, FOLLOW | AUDITVNPATH1, UIO_USERSPACE,
	       uap->path, FUNC7());

	ciferror = FUNC6(FUNC7(), &nd, uap->flags, &va,
			 fileproc_alloc_init, NULL, retval);
	if (xsecdst != NULL)
		FUNC5(xsecdst);

	return ciferror;
}