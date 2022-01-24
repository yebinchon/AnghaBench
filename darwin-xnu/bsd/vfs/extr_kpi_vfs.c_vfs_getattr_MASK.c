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
struct vfs_attr {int /*<<< orphan*/  f_create_time; } ;
typedef  int /*<<< orphan*/  mount_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfs_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vfs_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfs_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct vfs_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_create_time ; 
 int /*<<< orphan*/  f_modify_time ; 

int
FUNC4(mount_t mp, struct vfs_attr *vfa, vfs_context_t ctx)
{
	int		error;

	if ((error = FUNC3(mp, vfa, ctx)) != 0)
		return(error);

	/*
 	 * If we have a filesystem create time, use it to default some others.
 	 */
 	if (FUNC1(vfa, f_create_time)) {
 		if (FUNC0(vfa, f_modify_time) && !FUNC1(vfa, f_modify_time))
 			FUNC2(vfa, f_modify_time, vfa->f_create_time);
 	}

	return(0);
}