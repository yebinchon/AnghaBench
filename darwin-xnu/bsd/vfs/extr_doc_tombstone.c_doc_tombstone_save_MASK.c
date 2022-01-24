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
typedef  int /*<<< orphan*/  uint64_t ;
struct vnode {int dummy; } ;
struct doc_tombstone {int /*<<< orphan*/ * t_lastop_filename; int /*<<< orphan*/  t_lastop_document_id; void* t_lastop_item_vid; struct vnode* t_lastop_item; int /*<<< orphan*/  t_lastop_fileid; void* t_lastop_parent_vid; struct vnode* t_lastop_parent; } ;
struct componentname {int /*<<< orphan*/  cn_nameptr; } ;
typedef  int /*<<< orphan*/  ino64_t ;

/* Variables and functions */
 struct doc_tombstone* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct vnode*) ; 

void
FUNC3(struct vnode *dvp, struct vnode *vp,
				   struct componentname *cnp, uint64_t doc_id,
				   ino64_t file_id)
{
	struct  doc_tombstone *ut;
	ut = FUNC0();

	ut->t_lastop_parent         = dvp;
	ut->t_lastop_parent_vid     = FUNC2(dvp);
	ut->t_lastop_fileid         = file_id;
	ut->t_lastop_item           = vp;
	ut->t_lastop_item_vid       = vp ? FUNC2(vp) : 0;
    ut->t_lastop_document_id    = doc_id;

	FUNC1((char *)&ut->t_lastop_filename[0], cnp->cn_nameptr, sizeof(ut->t_lastop_filename));
}