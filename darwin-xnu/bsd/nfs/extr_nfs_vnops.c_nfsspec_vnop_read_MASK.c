#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vnop_read_args {int /*<<< orphan*/  a_vp; } ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  TYPE_2__* nfsnode_t ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {TYPE_1__ n_atim; int /*<<< orphan*/  n_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  NACC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnop_read_args*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  spec_vnodeop_p ; 
 int /*<<< orphan*/  vnop_read ; 

int
FUNC6(
	struct vnop_read_args /* {
		struct vnodeop_desc *a_desc;
		vnode_t a_vp;
		struct uio *a_uio;
		int a_ioflag;
		vfs_context_t a_context;
	} */ *ap)
{
	nfsnode_t np = FUNC2(ap->a_vp);
	struct timespec now;
	int error;

	/*
	 * Set access flag.
	 */
	if ((error = FUNC4(np)))
		return (error);
	np->n_flag |= NACC;
	FUNC3(&now);
	np->n_atim.tv_sec = now.tv_sec;
	np->n_atim.tv_nsec = now.tv_nsec;
	FUNC5(np);
	return (FUNC0(spec_vnodeop_p, FUNC1(vnop_read), ap));
}