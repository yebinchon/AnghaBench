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
struct vfs_attr {int dummy; } ;
typedef  int /*<<< orphan*/  mount_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfs_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfs_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_bavail ; 
 int /*<<< orphan*/  f_bfree ; 
 int /*<<< orphan*/  f_blocks ; 
 int /*<<< orphan*/  f_bsize ; 
 int /*<<< orphan*/  f_bused ; 
 int /*<<< orphan*/  f_capabilities ; 
 int /*<<< orphan*/  f_ffree ; 
 int /*<<< orphan*/  f_files ; 
 int /*<<< orphan*/  f_iosize ; 
 int /*<<< orphan*/  FUNC2 (struct vfs_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct vfs_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(mount_t mp, struct vfs_attr * vfap, vfs_context_t ctx)
{
	FUNC2(vfap, 0, sizeof(*vfap));
	FUNC0(vfap);
	FUNC1(vfap, f_bsize);
	FUNC1(vfap, f_iosize);
	FUNC1(vfap, f_blocks);
	FUNC1(vfap, f_bfree);
	FUNC1(vfap, f_bavail);
	FUNC1(vfap, f_bused);
	FUNC1(vfap, f_files);
	FUNC1(vfap, f_ffree);
	FUNC1(vfap, f_capabilities);

	return FUNC3(mp, vfap, ctx);
}