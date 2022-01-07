
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
typedef int dev_t ;


 int UIO_WRITE ;
 int mmrw (int ,struct uio*,int ) ;

int
mmwrite(dev_t dev, struct uio *uio)
{
 return (mmrw(dev, uio, UIO_WRITE));
}
