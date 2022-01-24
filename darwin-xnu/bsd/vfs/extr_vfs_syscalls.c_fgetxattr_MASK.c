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
struct fgetxattr_args {int options; scalar_t__ size; int /*<<< orphan*/  fd; int /*<<< orphan*/  value; int /*<<< orphan*/  position; int /*<<< orphan*/  attrname; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  attrname ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC1 (int) ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int /*<<< orphan*/  XATTR_MAXNAMELEN ; 
 int XATTR_NODEFAULT ; 
 int XATTR_NOFOLLOW ; 
 int XATTR_NOSECURITY ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*) ; 

int
FUNC13(proc_t p, struct fgetxattr_args *uap, user_ssize_t *retval)
{
	vnode_t vp;
	char attrname[XATTR_MAXNAMELEN+1];
	uio_t auio = NULL;
	int spacetype = FUNC0(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	size_t attrsize = 0;
	size_t namelen;
	int error;
	char uio_buf[ FUNC1(1) ];

	if (uap->options & (XATTR_NOFOLLOW | XATTR_NOSECURITY | XATTR_NODEFAULT))
		return (EINVAL);

	if ( (error = FUNC4(uap->fd, &vp)) ) {
		return (error);
	}
	if ( (error = FUNC10(vp)) ) {
		FUNC3(uap->fd);
		return(error);
	}
	error = FUNC2(uap->attrname, attrname, sizeof(attrname), &namelen);
	if (error != 0) {
		goto out;
	}
	if (FUNC12(attrname)) {
		error = EPERM;
		goto out;
	}
	if (uap->value && uap->size > 0) {
		auio = FUNC6(1, uap->position, spacetype, UIO_READ,
		                            &uio_buf[0], sizeof(uio_buf));
		FUNC5(auio, uap->value, uap->size);
	}

	error = FUNC9(vp, attrname, auio, &attrsize, uap->options, FUNC8());
out:
	(void)FUNC11(vp);
	FUNC3(uap->fd);

	if (auio) {
		*retval = uap->size - FUNC7(auio);
	} else {
		*retval = (user_ssize_t)attrsize;
	}
	return (error);
}