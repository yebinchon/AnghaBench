
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct proc {int dummy; } ;
typedef int dev_t ;
typedef int caddr_t ;


 int ASSERT (int) ;
 int dtrace_ioctl_helper (int ,int ,int*) ;

int
helper_ioctl(dev_t dev, u_long cmd, caddr_t data, int fflag, struct proc *p)
{
#pragma unused(dev,fflag,p)
 int err, rv = 0;

 err = dtrace_ioctl_helper(cmd, data, &rv);

 if (err != 0) {
  ASSERT( (err & 0xfffff000) == 0 );
  return (err & 0xfff);
 } else if (rv != 0) {
  ASSERT( (rv & 0xfff00000) == 0 );
  return (((rv & 0xfffff) << 12));
 } else
  return 0;
}
