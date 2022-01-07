
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct doc_tombstone {struct vnode* t_lastop_item; scalar_t__ t_lastop_document_id; } ;
struct componentname {int cn_namelen; int * cn_nameptr; } ;


 scalar_t__ doc_tombstone_should_ignore_name (int *,int ) ;

bool doc_tombstone_should_save(struct doc_tombstone *ut, struct vnode *vp,
          struct componentname *cnp)
{
 if (cnp->cn_nameptr == ((void*)0)) {
  return 0;
 }

 if (ut->t_lastop_document_id && ut->t_lastop_item == vp
  && doc_tombstone_should_ignore_name(cnp->cn_nameptr, cnp->cn_namelen)) {
  return 0;
 }

 return 1;
}
