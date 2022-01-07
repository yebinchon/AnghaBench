
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mockfs_fsnode_t ;
struct TYPE_4__ {scalar_t__ mnt; struct TYPE_4__* parent; struct TYPE_4__* child_b; struct TYPE_4__* child_a; } ;


 int EINVAL ;
 int ENOMEM ;

int mockfs_fsnode_adopt(mockfs_fsnode_t parent, mockfs_fsnode_t child)
{
 int rvalue;

 rvalue = 0;




 if ((!parent || !child || child->parent) && (parent != child)) {
  rvalue = EINVAL;
  goto done;
 }




 if (parent->mnt != child->mnt) {
  rvalue = EINVAL;
  goto done;
 }
 if (!parent->child_a) {
  parent->child_a = child;
  child->parent = parent;
 }
 else if (!parent->child_b) {
  parent->child_b = child;
  child->parent = parent;
 }
 else {
  rvalue = ENOMEM;
 }

done:
 return rvalue;
}
