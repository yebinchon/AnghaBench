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
struct vnode_attr {int dummy; } ;
struct attrlist {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct attrlist*,struct vnode_attr*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct attrlist *alp, struct vnode_attr *vap,
    enum vtype obj_vtype, ssize_t *attrs_fixed_sizep, vfs_context_t ctx)
{
	// the caller passes us no options, we assume the caller wants the new fork
	// attr behavior, hence the hardcoded 1
	return (FUNC1(alp, vap, obj_vtype,
	    attrs_fixed_sizep, FUNC0(FUNC2(ctx)), 1));
}