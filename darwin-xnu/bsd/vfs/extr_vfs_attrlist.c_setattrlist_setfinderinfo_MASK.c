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
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
struct vfs_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSE_ARG_DONE ; 
 int /*<<< orphan*/  FSE_ARG_VNODE ; 
 int /*<<< orphan*/  FSE_FINDER_INFO_CHANGED ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  XATTR_FINDERINFO_NAME ; 
 int /*<<< orphan*/  XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vfs_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vfs_context*) ; 

__attribute__((used)) static int
FUNC8(vnode_t vp, char *fndrinfo, struct vfs_context *ctx)
{
	uio_t	auio;
	char	uio_buf[FUNC1(1)];
	int	error;

	if ((auio = FUNC5(1, 0, UIO_SYSSPACE, UIO_WRITE, uio_buf, sizeof(uio_buf))) == NULL) {
		error = ENOMEM;
	} else {
		FUNC4(auio, FUNC0(fndrinfo), 32);
		error = FUNC7(vp, XATTR_FINDERINFO_NAME, auio, XATTR_NOSECURITY, ctx);
		FUNC6(auio);
	}

#if CONFIG_FSE
	if (error == 0 && need_fsevent(FSE_FINDER_INFO_CHANGED, vp)) {
	    add_fsevent(FSE_FINDER_INFO_CHANGED, ctx, FSE_ARG_VNODE, vp, FSE_ARG_DONE);
	}
#endif
	return (error);
}