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
struct vnop_read_args {int /*<<< orphan*/  a_vp; } ;
typedef  int /*<<< orphan*/  devnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFS_UPDATE_ACCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnop_read_args*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spec_vnodeop_p ; 
 int /*<<< orphan*/  vnop_read ; 

__attribute__((used)) static int
FUNC4(struct vnop_read_args *ap)
        /* struct vnop_read_args {
                struct vnode *a_vp;
                struct uio *a_uio;
                int  a_ioflag;
                kauth_cred_t a_cred;
        } */
{
	devnode_t * 	dnp = FUNC2(ap->a_vp);

	FUNC3(dnp, DEVFS_UPDATE_ACCESS);

	return (FUNC0 (spec_vnodeop_p, FUNC1(vnop_read), ap));
}