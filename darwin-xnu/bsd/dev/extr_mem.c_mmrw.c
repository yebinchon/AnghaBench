
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long vm_address_t ;
struct uio {int uio_rw; int uio_offset; } ;
typedef enum uio_rw { ____Placeholder_uio_rw } uio_rw ;
typedef int dev_t ;


 int EFAULT ;
 int ENODEV ;
 int MALLOC (char const*,int ,int ,int ,int ) ;
 int M_TEMP ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int UIO_READ ;
 int UIO_WRITE ;
 int VM_MAX_KERNEL_ADDRESS ;
 unsigned long VM_MIN_KERNEL_AND_KEXT_ADDRESS ;
 int bzero (char const*,int ) ;
 int caddr_t ;
 int dev_kmem_enabled ;
 int dev_kmem_mask_top_bit ;
 char const* devzerobuf ;
 int kernacc (unsigned long,unsigned int) ;
 unsigned int min (unsigned int,int ) ;
 int minor (int ) ;
 unsigned int uio_curriovlen (struct uio*) ;
 scalar_t__ uio_resid (struct uio*) ;
 int uio_update (struct uio*,unsigned int) ;
 int uiomove (char const*,int,struct uio*) ;

int
mmrw(dev_t dev, struct uio *uio, enum uio_rw rw)
{
 unsigned int c;
 int error = 0;

 while (uio_resid(uio) > 0) {
  uio_update(uio, 0);

  switch (minor(dev)) {


  case 0:
   return (ENODEV);


  case 1:

   return (ENODEV);
  case 2:
   if (rw == UIO_READ)
    return (0);
   c = uio_curriovlen(uio);

   error = 0;
   break;
  case 3:
   if(devzerobuf == ((void*)0)) {
    MALLOC(devzerobuf, caddr_t,PAGE_SIZE, M_TEMP, M_WAITOK);
    bzero(devzerobuf, PAGE_SIZE);
   }
   if(uio->uio_rw == UIO_WRITE) {
    c = uio_curriovlen(uio);

    error = 0;
    break;
   }

    c = min(uio_curriovlen(uio), PAGE_SIZE);
   error = uiomove(devzerobuf, (int)c, uio);
   if (error)
    break;

   continue;
  default:
   return (ENODEV);
  }

  if (error)
   break;

  uio_update(uio, c);
 }
 return (error);




}
