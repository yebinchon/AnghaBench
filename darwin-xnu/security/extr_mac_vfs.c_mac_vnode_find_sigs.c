
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct proc {int dummy; } ;
typedef int off_t ;


 int MAC_CHECK (int ,struct proc*,struct vnode*,int ,int ) ;
 int mac_proc_enforce ;
 int mac_vnode_enforce ;
 int vnode_find_sigs ;

int
mac_vnode_find_sigs(struct proc *p, struct vnode *vp, off_t offset)
{
 int error;







 MAC_CHECK(vnode_find_sigs, p, vp, offset, vp->v_label);

 return (error);
}
