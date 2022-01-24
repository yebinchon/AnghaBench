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
typedef  int /*<<< orphan*/  uint8_t ;
struct vnode {int dummy; } ;
struct fileglob {scalar_t__ fg_data; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 scalar_t__ FUNC0 (struct fileglob*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 

uint8_t
FUNC2(struct fileglob *fg, off_t offset)
{
	vnode_t vp;

	if (FUNC0(fg) != DTYPE_VNODE)
		return 0;

	vp = (struct vnode *)fg->fg_data;
	if (vp == NULL)
		return 0;

	return FUNC1(vp, offset);
}