
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;
typedef scalar_t__ uint32_t ;
typedef int u_long ;
struct proc {int dummy; } ;
typedef int dev_t ;
typedef scalar_t__ caddr_t ;


 int ASSERT (int) ;
 int CRED () ;
 int dtrace_ioctl (int ,int ,scalar_t__,int,int ,int*) ;
 scalar_t__ proc_is64bit (struct proc*) ;

int
_dtrace_ioctl(dev_t dev, u_long cmd, caddr_t data, int fflag, struct proc *p)
{
#pragma unused(p)
 int err, rv = 0;
    user_addr_t uaddrp;

    if (proc_is64bit(p))
  uaddrp = *(user_addr_t *)data;
 else
  uaddrp = (user_addr_t) *(uint32_t *)data;

 err = dtrace_ioctl(dev, cmd, uaddrp, fflag, CRED(), &rv);


 if (err != 0) {
  ASSERT( (err & 0xfffff000) == 0 );
  return (err & 0xfff);
 } else if (rv != 0) {
  ASSERT( (rv & 0xfff00000) == 0 );
  return (((rv & 0xfffff) << 12));
 } else
  return 0;
}
