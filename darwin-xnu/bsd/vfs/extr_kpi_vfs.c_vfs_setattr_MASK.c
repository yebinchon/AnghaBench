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
 int EROFS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct vfs_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(mount_t mp, struct vfs_attr *vfa, vfs_context_t ctx)
{
	int error;
	
	if (FUNC1(mp))
		return EROFS;

	error = FUNC0(mp, vfa, ctx);
	
	/*
	 * If we had alternate ways of setting vfs attributes, we'd
	 * fall back here.
	 */

	return error;
}