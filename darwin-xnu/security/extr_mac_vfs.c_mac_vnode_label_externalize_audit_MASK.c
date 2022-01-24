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
struct vnode {int /*<<< orphan*/  v_label; } ;
struct mac {int /*<<< orphan*/  m_buflen; int /*<<< orphan*/  m_string; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode ; 

int
FUNC1(struct vnode *vp, struct mac *mac)
{
	int error;

	/* It is assumed that any necessary vnode locking is done on entry */
	error = FUNC0(vnode, vp->v_label,
	    mac->m_string, mac->m_buflen);

	return (error);
}