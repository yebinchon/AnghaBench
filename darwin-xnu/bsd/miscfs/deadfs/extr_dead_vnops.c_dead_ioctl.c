
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_ioctl_args {int a_vp; } ;


 int EBADF ;
 int VCALL (int ,int ,struct vnop_ioctl_args*) ;
 int VOFFSET (int ) ;
 int chkvnlock (int ) ;
 int vnop_ioctl ;

int
dead_ioctl(struct vnop_ioctl_args *ap)
{

 if (!chkvnlock(ap->a_vp))
  return (EBADF);
 return (VCALL(ap->a_vp, VOFFSET(vnop_ioctl), ap));
}
