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
typedef  size_t user_ssize_t ;
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
struct getxattr_args {int options; int size; int /*<<< orphan*/  value; int /*<<< orphan*/  position; int /*<<< orphan*/  attrname; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  attrname ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FOLLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_GETXATTR ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC2 (int) ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int /*<<< orphan*/  XATTR_MAXNAMELEN ; 
 size_t XATTR_MAXSIZE ; 
 int XATTR_NODEFAULT ; 
 int XATTR_NOFOLLOW ; 
 int XATTR_NOSECURITY ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,size_t*) ; 
 int FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*) ; 

int
FUNC15(proc_t p, struct getxattr_args *uap, user_ssize_t *retval)
{
	vnode_t vp;
	struct nameidata nd;
	char attrname[XATTR_MAXNAMELEN+1];
	vfs_context_t ctx = FUNC10();
	uio_t auio = NULL;
	int spacetype = FUNC0(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	size_t attrsize = 0;
	size_t namelen;
	u_int32_t nameiflags;
	int error;
	char uio_buf[ FUNC2(1) ];

	if (uap->options & (XATTR_NOSECURITY | XATTR_NODEFAULT))
		return (EINVAL);

	nameiflags = (uap->options & XATTR_NOFOLLOW) ? 0 : FOLLOW;
	FUNC1(&nd, LOOKUP, OP_GETXATTR, nameiflags, spacetype, uap->path, ctx);
	if ((error = FUNC4(&nd))) {
		return (error);
	}
	vp = nd.ni_vp;
	FUNC5(&nd);

	error = FUNC3(uap->attrname, attrname, sizeof(attrname), &namelen);
	if (error != 0) {
		goto out;
	}
	if (FUNC14(attrname)) {
		if (!FUNC11(ctx) || FUNC6(attrname, "com.apple.system.Security") != 0) {
			error = EPERM;
			goto out;
		}
	}
	/*
	 * the specific check for 0xffffffff is a hack to preserve
	 * binaray compatibilty in K64 with applications that discovered
	 * that passing in a buf pointer and a size of -1 resulted in
	 * just the size of the indicated extended attribute being returned.
	 * this isn't part of the documented behavior, but because of the
	 * original implemtation's check for "uap->size > 0", this behavior
	 * was allowed. In K32 that check turned into a signed comparison
	 * even though uap->size is unsigned...  in K64, we blow by that
	 * check because uap->size is unsigned and doesn't get sign smeared
	 * in the munger for a 32 bit user app.  we also need to add a
	 * check to limit the maximum size of the buffer being passed in...
	 * unfortunately, the underlying fileystems seem to just malloc
	 * the requested size even if the actual extended attribute is tiny.
	 * because that malloc is for kernel wired memory, we have to put a
	 * sane limit on it.
	 *
	 * U32 running on K64 will yield 0x00000000ffffffff for uap->size
	 * U64 running on K64 will yield -1 (64 bits wide)
	 * U32/U64 running on K32 will yield -1 (32 bits wide)
	 */
	if (uap->size == 0xffffffff || uap->size == (size_t)-1)
		goto no_uio;

	if (uap->value) {
		if (uap->size > (size_t)XATTR_MAXSIZE)
			uap->size = XATTR_MAXSIZE;

		auio = FUNC8(1, uap->position, spacetype, UIO_READ,
		                            &uio_buf[0], sizeof(uio_buf));
		FUNC7(auio, uap->value, uap->size);
	}
no_uio:
	error = FUNC12(vp, attrname, auio, &attrsize, uap->options, ctx);
out:
	FUNC13(vp);

	if (auio) {
		*retval = uap->size - FUNC9(auio);
	} else {
		*retval = (user_ssize_t)attrsize;
	}

	return (error);
}