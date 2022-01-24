#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct TYPE_6__ {scalar_t__ v_writecount; } ;

/* Variables and functions */
 int EINVAL ; 
 int VNODE_WRITEABLE ; 
 int FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(vnode_t vp, int vid, int vflags)
{
	int error = 0;

	FUNC1(vp);

	if ((vflags & VNODE_WRITEABLE) && (vp->v_writecount == 0))
	        /*
		 * vnode to be returned only if it has writers opened 
		 */
	        error = EINVAL;
	else
	        error = FUNC0(vp, vid, vflags);

	FUNC2(vp);

	return (error);
}