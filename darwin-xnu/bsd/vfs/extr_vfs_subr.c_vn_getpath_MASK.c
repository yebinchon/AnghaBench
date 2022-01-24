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
struct vnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUILDPATH_NO_FS_ENTER ; 
 int FUNC0 (struct vnode*,char*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(struct vnode *vp, char *pathbuf, int *len)
{
	return FUNC0(vp, pathbuf, *len, len, BUILDPATH_NO_FS_ENTER, FUNC1());
}