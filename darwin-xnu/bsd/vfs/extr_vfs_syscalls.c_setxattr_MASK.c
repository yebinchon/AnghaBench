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
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct setxattr_args {int options; int /*<<< orphan*/  size; int /*<<< orphan*/  value; int /*<<< orphan*/  position; int /*<<< orphan*/  path; int /*<<< orphan*/  attrname; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  attrname ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int EPERM ; 
 int /*<<< orphan*/  FOLLOW ; 
 int /*<<< orphan*/  FSE_ARG_DONE ; 
 int /*<<< orphan*/  FSE_ARG_VNODE ; 
 int /*<<< orphan*/  FSE_XATTR_MODIFIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_SETXATTR ; 
 int FUNC2 (int) ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  XATTR_MAXNAMELEN ; 
 int XATTR_NODEFAULT ; 
 int XATTR_NOFOLLOW ; 
 int XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,size_t*) ; 
 int FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*) ; 

int
FUNC13(proc_t p, struct setxattr_args *uap, int *retval)
{
	vnode_t vp;
	struct nameidata nd;
	char attrname[XATTR_MAXNAMELEN+1];
	vfs_context_t ctx = FUNC9();
	uio_t auio = NULL;
	int spacetype = FUNC0(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	size_t namelen;
	u_int32_t nameiflags;
	int error;
	char uio_buf[ FUNC2(1) ];

	if (uap->options & (XATTR_NOSECURITY | XATTR_NODEFAULT))
		return (EINVAL);

	error = FUNC4(uap->attrname, attrname, sizeof(attrname), &namelen);
	if (error != 0) {
		if (error == EPERM) {
			/* if the string won't fit in attrname, copyinstr emits EPERM */
			return (ENAMETOOLONG);
		}
		/* Otherwise return the default error from copyinstr to detect ERANGE, etc */
		return error;
	}
	if (FUNC12(attrname))
		return(EPERM);
	if (uap->size != 0 && uap->value == 0) {
		return (EINVAL);
	}

	nameiflags = (uap->options & XATTR_NOFOLLOW) ? 0 : FOLLOW;
	FUNC1(&nd, LOOKUP, OP_SETXATTR, nameiflags, spacetype, uap->path, ctx);
	if ((error = FUNC5(&nd))) {
		return (error);
	}
	vp = nd.ni_vp;
	FUNC6(&nd);

	auio = FUNC8(1, uap->position, spacetype, UIO_WRITE,
	                            &uio_buf[0], sizeof(uio_buf));
	FUNC7(auio, uap->value, uap->size);

	error = FUNC10(vp, attrname, auio, uap->options, ctx);
#if CONFIG_FSE
	if (error == 0) {
		add_fsevent(FSE_XATTR_MODIFIED, ctx,
		    FSE_ARG_VNODE, vp,
		    FSE_ARG_DONE);
	}
#endif
	FUNC11(vp);
	*retval = 0;
	return (error);
}