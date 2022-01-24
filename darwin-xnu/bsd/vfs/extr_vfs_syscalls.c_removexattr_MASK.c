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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct removexattr_args {int options; int /*<<< orphan*/  path; int /*<<< orphan*/  attrname; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  attrname ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FOLLOW ; 
 int /*<<< orphan*/  FSE_ARG_DONE ; 
 int /*<<< orphan*/  FSE_ARG_VNODE ; 
 int /*<<< orphan*/  FSE_XATTR_REMOVED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_REMOVEXATTR ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int /*<<< orphan*/  XATTR_MAXNAMELEN ; 
 int XATTR_NODEFAULT ; 
 int XATTR_NOFOLLOW ; 
 int XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,size_t*) ; 
 int FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 

int
FUNC10(proc_t p, struct removexattr_args *uap, int *retval)
{
	vnode_t vp;
	struct nameidata nd;
	char attrname[XATTR_MAXNAMELEN+1];
	int spacetype = FUNC0(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	vfs_context_t ctx = FUNC6();
	size_t namelen;
	u_int32_t nameiflags;
	int error;

	if (uap->options & (XATTR_NOSECURITY | XATTR_NODEFAULT))
		return (EINVAL);

	error = FUNC3(uap->attrname, attrname, sizeof(attrname), &namelen);
	if (error != 0) {
		return (error);
	}
	if (FUNC9(attrname))
		return(EPERM);
	nameiflags = (uap->options & XATTR_NOFOLLOW) ? 0 : FOLLOW;
	FUNC1(&nd, LOOKUP, OP_REMOVEXATTR, nameiflags, spacetype, uap->path, ctx);
	if ((error = FUNC4(&nd))) {
		return (error);
	}
	vp = nd.ni_vp;
	FUNC5(&nd);

	error = FUNC7(vp, attrname, uap->options, ctx);
#if CONFIG_FSE
	if (error == 0) {
		add_fsevent(FSE_XATTR_REMOVED, ctx,
		    FSE_ARG_VNODE, vp,
		    FSE_ARG_DONE);
	}
#endif
	FUNC8(vp);
	*retval = 0;
	return (error);
}