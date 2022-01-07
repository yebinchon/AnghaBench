
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int dev_t ;


 int CRED () ;
 int dtrace_close (int ,int,int,int ) ;

int
_dtrace_close(dev_t dev, int flags, int devtype, struct proc *p)
{
#pragma unused(p)
 return dtrace_close( dev, flags, devtype, CRED());
}
