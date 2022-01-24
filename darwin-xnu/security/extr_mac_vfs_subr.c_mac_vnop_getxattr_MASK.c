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
struct vnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct vnode*,char const*,int /*<<< orphan*/ ,size_t*,int,int /*<<< orphan*/ ) ; 

int
FUNC7 (struct vnode *vp, const char *name, char *buf, size_t len,
		   size_t *attrlen)
{
	vfs_context_t ctx = FUNC5();
	int options = XATTR_NOSECURITY;
	char uio_buf[ FUNC1(1) ];
        uio_t auio;
	int error;

	auio = FUNC3(1, 0, UIO_SYSSPACE, UIO_READ,
				    &uio_buf[0], sizeof(uio_buf));
	FUNC2(auio, FUNC0(buf), len);

	error = FUNC6(vp, name, auio, attrlen, options, ctx);
	*attrlen = len - FUNC4(auio);

	return (error);
}