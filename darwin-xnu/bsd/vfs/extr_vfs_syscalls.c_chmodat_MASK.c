#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AT_SYMLINK_NOFOLLOW ; 
 int AUDITVNPATH1 ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NOFOLLOW ; 
 int /*<<< orphan*/  OP_SETATTR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode_attr*) ; 
 int FUNC2 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(vfs_context_t ctx, user_addr_t path, struct vnode_attr *vap,
    int fd, int flag, enum uio_seg segflg)
{
	struct nameidata nd;
	int follow, error;

	follow = (flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW : FOLLOW;
	FUNC0(&nd, LOOKUP, OP_SETATTR, follow | AUDITVNPATH1,
	    segflg, path, ctx);
	if ((error = FUNC2(&nd, fd)))
		return (error);
	error = FUNC1(ctx, nd.ni_vp, vap);
	FUNC4(nd.ni_vp);
	FUNC3(&nd);
	return(error);
}