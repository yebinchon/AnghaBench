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
typedef  int /*<<< orphan*/ * vfs_context_t ;
struct vfs_attr {int dummy; } ;
typedef  TYPE_2__* mount_t ;
struct TYPE_7__ {TYPE_1__* mnt_op; } ;
struct TYPE_6__ {int (* vfs_getattr ) (TYPE_2__*,struct vfs_attr*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENOTSUP ; 
 TYPE_2__* dead_mountp ; 
 int FUNC0 (TYPE_2__*,struct vfs_attr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

int 
FUNC2(mount_t mp, struct vfs_attr *vfa, vfs_context_t ctx)
{
	int error;

	if ((mp == dead_mountp) || (mp->mnt_op->vfs_getattr == 0))
		return(ENOTSUP);

	if (ctx == NULL) {
		ctx = FUNC1();
	}

	error = (*mp->mnt_op->vfs_getattr)(mp, vfa, ctx);
	
	return(error);
}