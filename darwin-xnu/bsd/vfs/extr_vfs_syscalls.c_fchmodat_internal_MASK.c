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
typedef  int /*<<< orphan*/  user_addr_t ;
struct vnode_attr {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int ALLPERMS ; 
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode_attr*,int,int,int) ; 
 int /*<<< orphan*/  va_mode ; 

__attribute__((used)) static int
FUNC3(vfs_context_t ctx, user_addr_t path, int mode, int fd,
    int flag, enum uio_seg segflg)
{
	struct vnode_attr va;

	FUNC0(&va);
	FUNC1(&va, va_mode, mode & ALLPERMS);

	return (FUNC2(ctx, path, &va, fd, flag, segflg));
}