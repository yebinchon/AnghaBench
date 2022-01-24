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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode_attr {int /*<<< orphan*/  va_flags; } ;
typedef  int errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_flags ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vnode_attr*,int /*<<< orphan*/ ) ; 

errno_t
FUNC3(vnode_t vp, uint32_t *flags, vfs_context_t ctx)
{
	struct vnode_attr	va;
	int			error;

	FUNC0(&va);
	FUNC1(&va, va_flags);
	error = FUNC2(vp, &va, ctx);
	if (!error)
		*flags = va.va_flags;
	return error;
}