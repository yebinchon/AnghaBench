#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
struct vnop_close_args {int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_vp; } ;
struct vnode_attr {int /*<<< orphan*/  va_modify_time; int /*<<< orphan*/  va_access_time; } ;
typedef  TYPE_1__* nfsnode_t ;
typedef  int /*<<< orphan*/  mount_t ;
struct TYPE_5__ {int n_flag; int /*<<< orphan*/  n_mtim; int /*<<< orphan*/  n_atim; } ;

/* Variables and functions */
 int NACC ; 
 int NCHG ; 
 int NUPD ; 
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnop_close_args*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  spec_vnodeop_p ; 
 int /*<<< orphan*/  va_access_time ; 
 int /*<<< orphan*/  va_modify_time ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnop_close ; 

int
FUNC11(
	struct vnop_close_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		int a_fflag;
		vfs_context_t a_context;
	} */ *ap)
{
	vnode_t vp = ap->a_vp;
	nfsnode_t np = FUNC4(vp);
	struct vnode_attr vattr;
	mount_t mp;
	int error;

	if ((error = FUNC5(np)))
		return (error);
	if (np->n_flag & (NACC | NUPD)) {
		np->n_flag |= NCHG;
		if (!FUNC8(vp, 0) && (mp = FUNC9(vp)) && !FUNC7(mp)) {
			FUNC0(&vattr);
			if (np->n_flag & NACC) {
				vattr.va_access_time = np->n_atim;
				FUNC1(&vattr, va_access_time);
			}
			if (np->n_flag & NUPD) {
				vattr.va_modify_time = np->n_mtim;
				FUNC1(&vattr, va_modify_time);
			}
			FUNC6(np);
			FUNC10(vp, &vattr, ap->a_context);
		} else {
			FUNC6(np);
		}
	} else {
		FUNC6(np);
	}
	return (FUNC2(spec_vnodeop_p, FUNC3(vnop_close), ap));
}