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
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_cnd; int /*<<< orphan*/ * ni_vp; int /*<<< orphan*/ * ni_dvp; } ;

/* Variables and functions */
 int AUDITVNPATH1 ; 
 int /*<<< orphan*/  CREATE ; 
 int EEXIST ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_MKFIFO ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFIFO ; 
 int FUNC2 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*) ; 
 int /*<<< orphan*/  va_type ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,struct nameidata*,struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(vfs_context_t ctx, user_addr_t upath, struct vnode_attr *vap)
{
	vnode_t	vp, dvp;
	int error;
	struct nameidata nd;

	FUNC0(&nd, CREATE, OP_MKFIFO, LOCKPARENT | AUDITVNPATH1,
		UIO_USERSPACE, upath, ctx);
	error = FUNC2(&nd);
	if (error)
		return (error);
	dvp = nd.ni_dvp;
	vp = nd.ni_vp;

   	/* check that this is a new file and authorize addition */
   	if (vp != NULL) {
   		error = EEXIST;
   		goto out;
   	}
   	FUNC1(vap, va_type, VFIFO);

	if ((error = FUNC4(dvp, &nd.ni_cnd, vap, ctx, NULL)) != 0)
		goto out;

  	error = FUNC5(dvp, &vp, &nd, vap, 0, 0, NULL, ctx);
out:
	/*
	 * nameidone has to happen before we vnode_put(dvp)
	 * since it may need to release the fs_nodelock on the dvp
	 */
	FUNC3(&nd);

	if (vp)
	        FUNC6(vp);
	FUNC6(dvp);

	return error;
}