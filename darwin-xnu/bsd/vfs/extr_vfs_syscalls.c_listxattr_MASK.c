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
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
struct listxattr_args {int options; scalar_t__ bufsize; int /*<<< orphan*/  namebuf; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FOLLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_LISTXATTR ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC2 (int) ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int XATTR_NODEFAULT ; 
 int XATTR_NOFOLLOW ; 
 int XATTR_NOSECURITY ; 
 int FUNC3 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(proc_t p, struct listxattr_args *uap, user_ssize_t *retval)
{
	vnode_t vp;
	struct nameidata nd;
	vfs_context_t ctx = FUNC8();
	uio_t auio = NULL;
	int spacetype = FUNC0(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	size_t attrsize = 0;
	u_int32_t nameiflags;
	int error;
	char uio_buf[ FUNC2(1) ];

	if (uap->options & (XATTR_NOSECURITY | XATTR_NODEFAULT))
		return (EINVAL);

	nameiflags = (uap->options & XATTR_NOFOLLOW) ? 0 : FOLLOW;
	FUNC1(&nd, LOOKUP, OP_LISTXATTR, nameiflags, spacetype, uap->path, ctx);
	if ((error = FUNC3(&nd))) {
		return (error);
	}
	vp = nd.ni_vp;
	FUNC4(&nd);
	if (uap->namebuf != 0 && uap->bufsize > 0) {
		auio = FUNC6(1, 0, spacetype, UIO_READ,
		                            &uio_buf[0], sizeof(uio_buf));
		FUNC5(auio, uap->namebuf, uap->bufsize);
	}

	error = FUNC9(vp, auio, &attrsize, uap->options, ctx);

	FUNC10(vp);
	if (auio) {
		*retval = (user_ssize_t)uap->bufsize - FUNC7(auio);
	} else {
		*retval = (user_ssize_t)attrsize;
	}
	return (error);
}