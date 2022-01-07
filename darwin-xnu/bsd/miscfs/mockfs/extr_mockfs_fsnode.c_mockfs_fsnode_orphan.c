
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mockfs_fsnode_t ;
struct TYPE_4__ {struct TYPE_4__* parent; struct TYPE_4__* child_b; struct TYPE_4__* child_a; scalar_t__ vp; } ;


 int EINVAL ;
 int panic (char*,TYPE_1__*) ;

int mockfs_fsnode_orphan(mockfs_fsnode_t fsnp)
{
 int rvalue;
 mockfs_fsnode_t parent;

 rvalue = 0;

 if (!fsnp || !fsnp->parent) {
  rvalue = EINVAL;
  goto done;
 }




 if (fsnp->vp)
  panic("mockfs_fsnode_orphan called on node with live vnode; fsnp = %p (in case gdb is screwing with you)", fsnp);

 parent = fsnp->parent;

 if (parent->child_a == fsnp) {
  parent->child_a = ((void*)0);
  fsnp->parent = ((void*)0);
 }
 else if (parent->child_b == fsnp) {
  parent->child_b = ((void*)0);
  fsnp->parent = ((void*)0);
 }
 else
  panic("mockfs_fsnode_orphan insanity, fsnp->parent != parent->child; fsnp = %p (in case gdb is screwing with you)", fsnp);

done:
 return rvalue;
}
