#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int dummy; } ;
struct filedesc {int fd_cmask; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int ACCESSPERMS ; 
 int ALLPERMS ; 
 int AUDITVNPATH1 ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_OPEN ; 
 int S_ISTXT ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fileproc_alloc_init ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nameidata*,int,struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  va_mode ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(vfs_context_t ctx, user_addr_t path, int flags, int mode,
    int fd, enum uio_seg segflg, int *retval)
{
	struct filedesc *fdp = (FUNC4(ctx))->p_fd;
	struct vnode_attr va;
	struct nameidata nd;
	int cmode;

	FUNC1(&va);
	/* Mask off all but regular access permissions */
	cmode = ((mode &~ fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT;
	FUNC2(&va, va_mode, cmode & ACCESSPERMS);

	FUNC0(&nd, LOOKUP, OP_OPEN, FOLLOW | AUDITVNPATH1,
	    segflg, path, ctx);

	return (FUNC3(ctx, &nd, flags, &va, fileproc_alloc_init, NULL,
	    retval, fd));
}