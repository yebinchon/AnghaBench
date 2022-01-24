#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vnop_setattr_args {struct vnode_attr* a_vap; struct vnode* a_vp; } ;
struct TYPE_6__ {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_5__ {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct vnode_attr {int va_mode; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; TYPE_2__ va_modify_time; TYPE_1__ va_access_time; } ;
struct vnode {int dummy; } ;
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {int dn_access; int dn_change; int dn_update; int dn_mode; int /*<<< orphan*/  dn_gid; int /*<<< orphan*/  dn_uid; } ;
typedef  TYPE_3__ devnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct vnode*) ; 
 int FUNC5 (struct vnode*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  va_access_time ; 
 int /*<<< orphan*/  va_change_time ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_modify_time ; 
 int /*<<< orphan*/  va_uid ; 

__attribute__((used)) static int
FUNC6(struct vnop_setattr_args *ap)
	/*struct vnop_setattr_args  {
	  struct vnode *a_vp;
	  struct vnode_attr *a_vap;
	  vfs_context_t a_context;
          } */ 
{
  	struct vnode *vp = ap->a_vp;
 	struct vnode_attr *vap = ap->a_vap;
  	int error = 0;
  	devnode_t *	file_node;
  	struct timeval atimeval, mtimeval;
  
 	FUNC0();

  	file_node = FUNC4(vp);
  	/*
  	 * Go through the fields and update if set.
  	 */
 	if (FUNC2(vap, va_access_time) || FUNC2(vap, va_modify_time)) {
  
  
		if (FUNC2(vap, va_access_time))
			file_node->dn_access = 1;
		if (FUNC2(vap, va_modify_time)) {
			file_node->dn_change = 1;
			file_node->dn_update = 1;
		}
		atimeval.tv_sec = vap->va_access_time.tv_sec;
		atimeval.tv_usec = vap->va_access_time.tv_nsec / 1000;
		mtimeval.tv_sec = vap->va_modify_time.tv_sec;
		mtimeval.tv_usec = vap->va_modify_time.tv_nsec / 1000;
  
		if ( (error = FUNC5(vp, &atimeval, &mtimeval)) )
			goto exit;
 	}
 	FUNC3(vap, va_access_time);
 	FUNC3(vap, va_change_time);
  
  	/*
  	 * Change the permissions.
  	 */
 	if (FUNC2(vap, va_mode)) {
  		file_node->dn_mode &= ~07777;
  		file_node->dn_mode |= vap->va_mode & 07777;
  	}
 	FUNC3(vap, va_mode);
  
  	/*
  	 * Change the owner.
  	 */
 	if (FUNC2(vap, va_uid))
  		file_node->dn_uid = vap->va_uid;
 	FUNC3(vap, va_uid);
  
  	/*
  	 * Change the group.
  	 */
 	if (FUNC2(vap, va_gid))
  		file_node->dn_gid = vap->va_gid;
 	FUNC3(vap, va_gid);
	exit:
	FUNC1();

	return error;
}