
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {int dummy; } ;
struct doc_tombstone {int * t_lastop_filename; int t_lastop_document_id; void* t_lastop_item_vid; struct vnode* t_lastop_item; int t_lastop_fileid; void* t_lastop_parent_vid; struct vnode* t_lastop_parent; } ;
struct componentname {int cn_nameptr; } ;
typedef int ino64_t ;


 struct doc_tombstone* doc_tombstone_get () ;
 int strlcpy (char*,int ,int) ;
 void* vnode_vid (struct vnode*) ;

void
doc_tombstone_save(struct vnode *dvp, struct vnode *vp,
       struct componentname *cnp, uint64_t doc_id,
       ino64_t file_id)
{
 struct doc_tombstone *ut;
 ut = doc_tombstone_get();

 ut->t_lastop_parent = dvp;
 ut->t_lastop_parent_vid = vnode_vid(dvp);
 ut->t_lastop_fileid = file_id;
 ut->t_lastop_item = vp;
 ut->t_lastop_item_vid = vp ? vnode_vid(vp) : 0;
    ut->t_lastop_document_id = doc_id;

 strlcpy((char *)&ut->t_lastop_filename[0], cnp->cn_nameptr, sizeof(ut->t_lastop_filename));
}
