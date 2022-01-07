
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int caddr_t ;


 int ENXIO ;

int
rtioctl(unsigned long req, caddr_t data, struct proc *p)
{
#pragma unused(p, req, data)
 return (ENXIO);
}
