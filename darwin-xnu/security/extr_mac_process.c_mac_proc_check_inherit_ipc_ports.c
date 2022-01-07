
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct proc {int dummy; } ;
typedef int off_t ;


 int MAC_CHECK (int ,struct proc*,struct vnode*,int ,struct vnode*,int ,struct vnode*) ;
 int proc_check_inherit_ipc_ports ;

int
mac_proc_check_inherit_ipc_ports(struct proc *p, struct vnode *cur_vp, off_t cur_offset, struct vnode *img_vp, off_t img_offset, struct vnode *scriptvp)
{
 int error;

 MAC_CHECK(proc_check_inherit_ipc_ports, p, cur_vp, cur_offset, img_vp, img_offset, scriptvp);

 return (error);
}
