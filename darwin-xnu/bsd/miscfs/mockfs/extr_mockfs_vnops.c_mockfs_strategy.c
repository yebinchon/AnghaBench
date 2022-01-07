
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
struct vnop_strategy_args {int a_bp; } ;
struct TYPE_2__ {int v_mount; } ;


 int EIO ;
 int buf_strategy (scalar_t__,struct vnop_strategy_args*) ;
 TYPE_1__* buf_vnode (int ) ;
 scalar_t__ vfs_devvp (int ) ;
 int vnode_put (scalar_t__) ;

int mockfs_strategy(struct vnop_strategy_args * ap)
{
 int rvalue;
 vnode_t dvp;






 dvp = vfs_devvp(buf_vnode(ap->a_bp)->v_mount);

 if (dvp) {
  rvalue = buf_strategy(dvp, ap);
  vnode_put(dvp);
 }
 else {



  rvalue = EIO;
 }

 return rvalue;
}
