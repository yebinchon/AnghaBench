#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnop_mknod_args {int /*<<< orphan*/ * a_vpp; TYPE_1__* a_vap; int /*<<< orphan*/  a_cnp; int /*<<< orphan*/  a_dvp; int /*<<< orphan*/  a_context; } ;
struct nfsmount {int /*<<< orphan*/  nm_vers; } ;
typedef  int /*<<< orphan*/ * nfsnode_t ;
struct TYPE_3__ {int va_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  VBLK 131 
#define  VCHR 130 
#define  VFIFO 129 
#define  VSOCK 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (struct nfsmount*) ; 
 int /*<<< orphan*/  va_type ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

int
FUNC7(
	struct vnop_mknod_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_dvp;
		vnode_t *a_vpp;
		struct componentname *a_cnp;
		struct vnode_attr *a_vap;
		vfs_context_t a_context;
	} */ *ap)
{
	nfsnode_t np = NULL;
	struct nfsmount *nmp;
	int error;

	nmp = FUNC3(ap->a_dvp);
	if (FUNC5(nmp))
		return (ENXIO);

	if (!FUNC1(ap->a_vap, va_type))
		return (EINVAL);
	switch (ap->a_vap->va_type) {
	case VBLK:
	case VCHR:
	case VFIFO:
	case VSOCK:
		break;
	default:
		return (ENOTSUP);
	}

	error = FUNC4(ap->a_context, FUNC2(ap->a_dvp), ap->a_cnp, ap->a_vap,
			FUNC6(ap->a_vap->va_type, nmp->nm_vers), NULL, &np);
	if (!error)
		*ap->a_vpp = FUNC0(np);
	return (error);
}