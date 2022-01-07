
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_blktooff_args {void** a_offset; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;
typedef void* off_t ;


 int ENOTSUP ;


 int panic (char*) ;
 int printf (char*) ;

int
spec_blktooff(struct vnop_blktooff_args *ap)
{
 struct vnode *vp = ap->a_vp;

 switch (vp->v_type) {
 case 128:
  *ap->a_offset = (off_t)-1;
  return (ENOTSUP);

 case 129:
  printf("spec_blktooff: not implemented for VBLK\n");
  *ap->a_offset = (off_t)-1;
  return (ENOTSUP);

 default:
  panic("spec_blktooff type");
 }


 return (0);
}
