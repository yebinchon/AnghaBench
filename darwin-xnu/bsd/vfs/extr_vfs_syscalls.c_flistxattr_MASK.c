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
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
struct flistxattr_args {int options; scalar_t__ bufsize; int /*<<< orphan*/  fd; int /*<<< orphan*/  namebuf; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC0 (int) ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int XATTR_NODEFAULT ; 
 int XATTR_NOFOLLOW ; 
 int XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(proc_t p, struct flistxattr_args *uap, user_ssize_t *retval)
{
	vnode_t vp;
	uio_t auio = NULL;
	int spacetype = FUNC3(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	size_t attrsize = 0;
	int error;
	char uio_buf[ FUNC0(1) ];

	if (uap->options & (XATTR_NOFOLLOW | XATTR_NOSECURITY | XATTR_NODEFAULT))
		return (EINVAL);

	if ( (error = FUNC2(uap->fd, &vp)) ) {
		return (error);
	}
	if ( (error = FUNC9(vp)) ) {
		FUNC1(uap->fd);
		return(error);
	}
	if (uap->namebuf != 0 && uap->bufsize > 0) {
		auio = FUNC5(1, 0, spacetype,
								  	  UIO_READ, &uio_buf[0], sizeof(uio_buf));
		FUNC4(auio, uap->namebuf, uap->bufsize);
	}

	error = FUNC8(vp, auio, &attrsize, uap->options, FUNC7());

	FUNC10(vp);
	FUNC1(uap->fd);
	if (auio) {
		*retval = (user_ssize_t)uap->bufsize - FUNC6(auio);
	} else {
		*retval = (user_ssize_t)attrsize;
	}
	return (error);
}