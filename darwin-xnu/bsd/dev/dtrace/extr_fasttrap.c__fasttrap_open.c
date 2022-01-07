
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int dev_t ;



__attribute__((used)) static int
_fasttrap_open(dev_t dev, int flags, int devtype, struct proc *p)
{
#pragma unused(dev, flags, devtype, p)
 return 0;
}
