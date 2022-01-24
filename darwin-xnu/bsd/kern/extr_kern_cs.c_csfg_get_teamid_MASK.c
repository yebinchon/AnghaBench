#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  struct vnode* vnode_t ;
struct vnode {struct ubc_info* v_ubcinfo; } ;
struct ubc_info {TYPE_1__* cs_blobs; } ;
struct fileglob {scalar_t__ fg_data; } ;
struct TYPE_2__ {char* csb_teamid; } ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 scalar_t__ FUNC0 (struct fileglob*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

const char *
FUNC4(struct fileglob *fg)
{
	struct ubc_info *uip;
	const char *str = NULL;
	vnode_t vp;

	if (FUNC0(fg) != DTYPE_VNODE)
		return NULL;
	
	vp = (struct vnode *)fg->fg_data;
	if (vp == NULL)
		return NULL;

	FUNC2(vp);
	if (!FUNC1(vp))
		goto out;
	
	uip = vp->v_ubcinfo;
	if (uip == NULL)
		goto out;
	
	if (uip->cs_blobs == NULL)
		goto out;

	/* It is OK to extract the teamid from the first blob
	   because all blobs of a vnode must have the same teamid */	
	str = uip->cs_blobs->csb_teamid;
out:
	FUNC3(vp);

	return str;
}