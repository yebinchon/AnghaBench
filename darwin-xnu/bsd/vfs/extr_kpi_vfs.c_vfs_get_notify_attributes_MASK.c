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
struct vnode_attr {int /*<<< orphan*/  va_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*) ; 
 int /*<<< orphan*/  VNODE_NOTIFY_ATTRS ; 

int
FUNC1(struct vnode_attr *vap) 
{
	FUNC0(vap); 
	vap->va_active = VNODE_NOTIFY_ATTRS;
	return 0;
}