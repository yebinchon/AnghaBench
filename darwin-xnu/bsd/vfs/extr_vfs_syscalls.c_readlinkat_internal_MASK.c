#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
struct nameidata {TYPE_1__* ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_6__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int AUDITVNPATH1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  KAUTH_VNODE_READ_DATA ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NOFOLLOW ; 
 int /*<<< orphan*/  OP_READLINK ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC1 (int) ; 
 scalar_t__ VLNK ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(vfs_context_t ctx, int fd, user_addr_t path,
    enum uio_seg seg, user_addr_t buf, size_t bufsize, enum uio_seg bufseg,
    int *retval)
{
	vnode_t vp;
	uio_t auio;
	int error;
	struct nameidata nd;
	char uio_buf[ FUNC1(1) ];

	FUNC0(&nd, LOOKUP, OP_READLINK, NOFOLLOW | AUDITVNPATH1,
	    seg, path, ctx);

	error = FUNC4(&nd, fd);
	if (error)
		return (error);
	vp = nd.ni_vp;

	FUNC5(&nd);

	auio = FUNC7(1, 0, bufseg, UIO_READ,
                                    &uio_buf[0], sizeof(uio_buf));
	FUNC6(auio, buf, bufsize);
	if (vp->v_type != VLNK) {
		error = EINVAL;
	} else {
#if CONFIG_MACF
		error = mac_vnode_check_readlink(ctx, vp);
#endif
		if (error == 0)
			error = FUNC9(vp, NULL, KAUTH_VNODE_READ_DATA,
			                        ctx);
		if (error == 0)
			error = FUNC2(vp, auio, ctx);
	}
	FUNC10(vp);

	*retval = bufsize - (int)FUNC8(auio);
	return (error);
}