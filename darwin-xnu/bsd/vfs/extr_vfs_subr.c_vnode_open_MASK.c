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
typedef  int /*<<< orphan*/ * vnode_t ;
typedef  int /*<<< orphan*/ * vfs_context_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct nameidata {int /*<<< orphan*/ * ni_vp; } ;
typedef  int errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  CN_NBMOUNTLOOK ; 
 int /*<<< orphan*/  FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NOCROSSMOUNT ; 
 int /*<<< orphan*/  NOFOLLOW ; 
 int /*<<< orphan*/  OP_OPEN ; 
 int O_NOFOLLOW ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int VNODE_LOOKUP_CROSSMOUNTNOWAIT ; 
 int VNODE_LOOKUP_NOCROSSMOUNT ; 
 int VNODE_LOOKUP_NOFOLLOW ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (struct nameidata*,int,int) ; 

errno_t
FUNC4(const char *path, int fmode, int cmode, int flags, vnode_t *vpp, vfs_context_t ctx)
{
	struct nameidata nd;
	int error;
	u_int32_t ndflags = 0;
	int lflags = flags;

	if (ctx == NULL) {		/* XXX technically an error */
		ctx = FUNC2();
	}

	if (fmode & O_NOFOLLOW)
		lflags |= VNODE_LOOKUP_NOFOLLOW;

	if (lflags & VNODE_LOOKUP_NOFOLLOW)
		ndflags = NOFOLLOW;
	else
		ndflags = FOLLOW;

	if (lflags & VNODE_LOOKUP_NOCROSSMOUNT)
		ndflags |= NOCROSSMOUNT;
	
	if (lflags & VNODE_LOOKUP_CROSSMOUNTNOWAIT)
		ndflags |= CN_NBMOUNTLOOK;

	/* XXX AUDITVNPATH1 needed ? */
	FUNC1(&nd, LOOKUP, OP_OPEN, ndflags, UIO_SYSSPACE,
	       FUNC0(path), ctx);

	if ((error = FUNC3(&nd, fmode, cmode)))
		*vpp = NULL;
	else
		*vpp = nd.ni_vp;
	
	return (error);
}