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
struct vnode_attr {int dummy; } ;
struct nameidata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  va_mode ; 
 int FUNC2 (struct nameidata*,int*,struct vnode_attr*) ; 

int
FUNC3(struct nameidata *ndp, int *fmodep, int cmode)
{
	struct vnode_attr va;

	FUNC0(&va);
	FUNC1(&va, va_mode, cmode);
	
	return(FUNC2(ndp, fmodep, &va));
}