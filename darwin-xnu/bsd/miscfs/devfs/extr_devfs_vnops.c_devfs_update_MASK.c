#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnode {TYPE_1__* v_mount; } ;
struct timeval {int dummy; } ;
struct TYPE_6__ {scalar_t__ dn_update; scalar_t__ dn_change; scalar_t__ dn_access; } ;
typedef  TYPE_2__ devnode_t ;
struct TYPE_5__ {int mnt_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int DEVFS_UPDATE_ACCESS ; 
 int DEVFS_UPDATE_MOD ; 
 int MNT_RDONLY ; 
 TYPE_2__* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct timeval*,struct timeval*,struct timeval*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 

__attribute__((used)) static int
FUNC5(struct vnode *vp, struct timeval *access, struct timeval *modify)
{
	devnode_t * ip;
	struct timeval now;

	ip = FUNC2(vp);
	if (vp->v_mount->mnt_flag & MNT_RDONLY) {
	        ip->dn_access = 0;
	        ip->dn_change = 0;
	        ip->dn_update = 0;

		return (0);
	}

	FUNC0();
	FUNC4(&now);
	FUNC3(ip, access, modify, &now, DEVFS_UPDATE_ACCESS | DEVFS_UPDATE_MOD);
	FUNC1();

	return (0);
}