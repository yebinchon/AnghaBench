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
struct cs_blob {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 scalar_t__ FUNC0 (struct fileglob*) ; 
 char const* FUNC1 (struct cs_blob*) ; 
 struct cs_blob* FUNC2 (struct vnode*,int,int /*<<< orphan*/ ) ; 

const char *
FUNC3(struct fileglob *fg, off_t offset)
{
	vnode_t vp;
	struct cs_blob *csblob = NULL;

	if (FUNC0(fg) != DTYPE_VNODE)
		return NULL;

	vp = (struct vnode *)fg->fg_data;
	if (vp == NULL)
		return NULL;

	csblob = FUNC2(vp, -1, offset);
	if (csblob == NULL)
		return NULL;

	return FUNC1(csblob);
}