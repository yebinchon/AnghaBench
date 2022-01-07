
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnop_getattr_args {int a_context; struct vnode_attr* a_vap; struct vnode* a_vp; } ;
struct vnode_attr {int va_type; } ;
struct vnode {int v_type; } ;
struct TYPE_2__ {int fd_type; unsigned int fd_fd; } ;



 TYPE_1__* VTOFDESC (struct vnode*) ;
 int fdesc_attr (unsigned int,struct vnode_attr*,int ) ;
 int panic (char*) ;
 int vnode_setneedinactive (struct vnode*) ;

int
fdesc_getattr(struct vnop_getattr_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode_attr *vap = ap->a_vap;
 unsigned fd;
 int error = 0;

 switch (VTOFDESC(vp)->fd_type) {
 case 128:
  fd = VTOFDESC(vp)->fd_fd;
  error = fdesc_attr(fd, vap, ap->a_context);
  break;

 default:
  panic("Invalid type for an fdesc node!\n");
  break;
 }





 if (error == 0) {
  vp->v_type = vap->va_type;


  vnode_setneedinactive(vp);
 }

 return (error);
}
