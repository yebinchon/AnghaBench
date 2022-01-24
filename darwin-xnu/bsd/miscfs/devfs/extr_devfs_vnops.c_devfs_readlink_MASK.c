#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnop_readlink_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct uio {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_2__ Slnk; } ;
struct TYPE_7__ {scalar_t__ dn_type; TYPE_1__ dn_typeinfo; } ;
typedef  TYPE_3__ devnode_t ;

/* Variables and functions */
 scalar_t__ DEV_SLNK ; 
 int EINVAL ; 
 TYPE_3__* FUNC0 (struct vnode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC2(struct vnop_readlink_args *ap)
        /*struct vnop_readlink_args {
                struct vnode *a_vp;
                struct uio *a_uio;
		vfs_context_t a_context;
        } */
{
	struct vnode *vp = ap->a_vp;
	struct uio *uio = ap->a_uio;
	devnode_t * lnk_node;
	int error = 0;

	/*  set up refs to dir */
	lnk_node = FUNC0(vp);

	if (lnk_node->dn_type != DEV_SLNK) {
	        error = EINVAL;
		goto out;
	}
	error = FUNC1(lnk_node->dn_typeinfo.Slnk.name, 
			lnk_node->dn_typeinfo.Slnk.namelen, uio);
out:	
	return error;
}