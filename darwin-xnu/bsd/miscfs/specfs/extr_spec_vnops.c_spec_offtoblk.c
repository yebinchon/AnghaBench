
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_offtoblk_args {void** a_lblkno; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;
typedef void* daddr64_t ;


 int ENOTSUP ;


 int panic (char*) ;
 int printf (char*) ;

int
spec_offtoblk(struct vnop_offtoblk_args *ap)
{
 struct vnode *vp = ap->a_vp;

 switch (vp->v_type) {
 case 128:
  *ap->a_lblkno = (daddr64_t)-1;
  return (ENOTSUP);

 case 129:
  printf("spec_offtoblk: not implemented for VBLK\n");
  *ap->a_lblkno = (daddr64_t)-1;
  return (ENOTSUP);

 default:
  panic("spec_offtoblk type");
 }


 return (0);
}
