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
typedef  struct vnode* vnode_t ;
struct vnode {int dummy; } ;
struct fileglob {scalar_t__ fg_data; } ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 scalar_t__ FUNC0 (struct fileglob*) ; 
 int FUNC1 (struct vnode*,char*,int*) ; 

int
FUNC2(struct fileglob *fg, char *path, int *len)
{
	vnode_t vp = NULL;

	if (FUNC0(fg) != DTYPE_VNODE)
		return -1;
	
	vp = (struct vnode *)fg->fg_data;

	/* vn_getpath returns 0 for success,
	   or an error code */
	return FUNC1(vp, path, len);
}