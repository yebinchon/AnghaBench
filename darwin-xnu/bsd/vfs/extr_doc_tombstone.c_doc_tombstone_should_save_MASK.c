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
struct doc_tombstone {struct vnode* t_lastop_item; scalar_t__ t_lastop_document_id; } ;
struct componentname {int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/ * cn_nameptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC1(struct doc_tombstone *ut, struct vnode *vp,
							   struct componentname *cnp)
{
	if (cnp->cn_nameptr == NULL) {
		return false;
	}

	if (ut->t_lastop_document_id && ut->t_lastop_item == vp
		&& FUNC0(cnp->cn_nameptr, cnp->cn_namelen)) {
		return false;
	}

	return true;
}