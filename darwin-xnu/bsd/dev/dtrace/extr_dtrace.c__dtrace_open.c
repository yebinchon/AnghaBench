
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int dev_t ;


 int CRED () ;
 int dtrace_open (int *,int,int,int ) ;

int
_dtrace_open(dev_t dev, int flags, int devtype, struct proc *p)
{
#pragma unused(p)
 dev_t locdev = dev;

 return dtrace_open( &locdev, flags, devtype, CRED());
}
