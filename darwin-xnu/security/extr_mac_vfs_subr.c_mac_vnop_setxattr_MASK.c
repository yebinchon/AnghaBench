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
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
struct vnode {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EROFS ; 
 int /*<<< orphan*/  FSE_ARG_DONE ; 
 int /*<<< orphan*/  FSE_ARG_VNODE ; 
 int /*<<< orphan*/  FSE_XATTR_MODIFIED ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnode*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC8 (struct vnode *vp, const char *name, char *buf, size_t len)
{
	vfs_context_t ctx;
	int options = XATTR_NOSECURITY;
	char uio_buf[ FUNC1(1) ];
        uio_t auio;
	int error;

	if (FUNC6(vp->v_mount))
		return (EROFS);

	ctx = FUNC5();
	auio = FUNC4(1, 0, UIO_SYSSPACE, UIO_WRITE,
				    &uio_buf[0], sizeof(uio_buf));
	FUNC3(auio, FUNC0(buf), len);

	error = FUNC7(vp, name, auio, options, ctx);
#if CONFIG_FSE
	if (error == 0) {
		add_fsevent(FSE_XATTR_MODIFIED, ctx,
		    FSE_ARG_VNODE, vp,
		    FSE_ARG_DONE);
	}
#endif

	return (error);
}