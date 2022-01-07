
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct vnop_read_args {int a_ioflag; int a_uio; TYPE_1__* a_vp; } ;
typedef TYPE_2__* mockfs_fsnode_t ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {scalar_t__ v_type; scalar_t__ v_data; } ;


 int ENOTSUP ;
 scalar_t__ VREG ;
 int cluster_read (TYPE_1__*,int ,int ,int ) ;

int mockfs_read(struct vnop_read_args * ap)
{
 int rvalue;
 vnode_t vp;
 mockfs_fsnode_t fsnode;

 vp = ap->a_vp;
 fsnode = (mockfs_fsnode_t) vp->v_data;





 if (vp->v_type == VREG) {
  rvalue = cluster_read(vp, ap->a_uio, fsnode->size, ap->a_ioflag);
 }
 else {



  rvalue = ENOTSUP;
 }

 return rvalue;
}
