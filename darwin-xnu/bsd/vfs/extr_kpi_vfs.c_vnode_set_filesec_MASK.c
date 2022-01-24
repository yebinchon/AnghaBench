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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  kauth_filesec_t ;
typedef  int /*<<< orphan*/  kauth_acl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  KAUTH_ENDIAN_DISK ; 
 int /*<<< orphan*/  KAUTH_ENDIAN_HOST ; 
 int /*<<< orphan*/  KAUTH_FILESEC_NOACL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KAUTH_FILESEC_XATTR ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(vnode_t vp, kauth_filesec_t fsec, kauth_acl_t acl, vfs_context_t ctx)
{
	uio_t		fsec_uio;
	int		error;
	uint32_t	saved_acl_copysize;

	fsec_uio = NULL;
	
	if ((fsec_uio = FUNC8(2, 0, UIO_SYSSPACE, UIO_WRITE)) == NULL) {
		FUNC3("    ERROR - could not allocate iov to write ACL");	
		error = ENOMEM;
		goto out;
	}
	/*
	 * Save the pre-converted ACL copysize, because it gets swapped too
	 * if we are running with the wrong endianness.
	 */
	saved_acl_copysize = FUNC1(acl);

	FUNC6(KAUTH_ENDIAN_DISK, fsec, acl);

	FUNC7(fsec_uio, FUNC0(fsec), FUNC4(0) - FUNC2(KAUTH_FILESEC_NOACL));
	FUNC7(fsec_uio, FUNC0(acl), saved_acl_copysize);
	error = FUNC10(vp,
	    KAUTH_FILESEC_XATTR,
	    fsec_uio,
	    XATTR_NOSECURITY, 		/* we have auth'ed already */
	    ctx);
	FUNC5(ctx, vp, "SETATTR - set ACL returning %d", error);

	FUNC6(KAUTH_ENDIAN_HOST, fsec, acl);

out:
	if (fsec_uio != NULL)
		FUNC9(fsec_uio);
	return(error);
}