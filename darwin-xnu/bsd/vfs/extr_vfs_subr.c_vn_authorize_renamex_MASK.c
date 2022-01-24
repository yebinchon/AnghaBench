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
typedef  int /*<<< orphan*/  vfs_rename_flags_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode {int dummy; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vnode*,struct vnode*,struct componentname*,int /*<<< orphan*/ *,struct vnode*,struct vnode*,struct componentname*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

int
FUNC1(struct vnode *fdvp,  struct vnode *fvp,  struct componentname *fcnp,
					 struct vnode *tdvp,  struct vnode *tvp,  struct componentname *tcnp,
					 vfs_context_t ctx, vfs_rename_flags_t flags, void *reserved)
{

	return FUNC0(fdvp, fvp, fcnp, NULL, tdvp, tvp, tcnp, NULL, ctx, flags, reserved);
}