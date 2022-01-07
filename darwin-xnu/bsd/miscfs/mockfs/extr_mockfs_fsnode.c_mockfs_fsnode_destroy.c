
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* mockfs_mount_t ;
typedef TYPE_3__* mockfs_fsnode_t ;
struct TYPE_10__ {scalar_t__ parent; struct TYPE_10__* child_b; struct TYPE_10__* child_a; scalar_t__ vp; TYPE_1__* mnt; } ;
struct TYPE_9__ {TYPE_3__* mockfs_root; } ;
struct TYPE_8__ {scalar_t__ mnt_data; } ;


 int EINVAL ;
 int FREE (TYPE_3__*,int ) ;
 int M_TEMP ;
 int mockfs_fsnode_orphan (TYPE_3__*) ;
 int panic (char*,TYPE_3__*,...) ;

int mockfs_fsnode_destroy(mockfs_fsnode_t fsnp)
{
 int rvalue;

 rvalue = 0;





 if (!fsnp || (((mockfs_mount_t)fsnp->mnt->mnt_data)->mockfs_root == fsnp)) {
  rvalue = EINVAL;
  goto done;
 }





 if (fsnp->vp)
  panic("mockfs_fsnode_destroy called on node with live vnode; fsnp = %p (in case gdb is screwing with you)", fsnp);
 if (fsnp->child_a)
  if ((rvalue = mockfs_fsnode_destroy(fsnp->child_a)))
   panic("mockfs_fsnode_destroy failed on child_a; fsnp = %p (in case gdb is screwing with you), rvalue = %d", fsnp, rvalue);

 if (fsnp->child_b)
  if ((rvalue = mockfs_fsnode_destroy(fsnp->child_b)))
   panic("mockfs_fsnode_destroy failed on child_b; fsnp = %p (in case gdb is screwing with you), rvalue = %d", fsnp, rvalue);




 if (fsnp->parent)
  if ((rvalue = mockfs_fsnode_orphan(fsnp)))
   panic("mockfs_fsnode_orphan failed during destroy; fsnp = %p (in case gdb is screwing with you), rvalue = %d", fsnp, rvalue);

 FREE(fsnp, M_TEMP);
done:
 return rvalue;
}
