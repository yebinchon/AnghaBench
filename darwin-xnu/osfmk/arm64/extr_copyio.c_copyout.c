
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ user_addr_t ;
struct TYPE_4__ {TYPE_1__* map; } ;
struct TYPE_3__ {scalar_t__ pmap; } ;


 int COPYIO_OUT ;
 int copyio (int ,void const*,char*,scalar_t__,int *) ;
 int copyout_kern (void const*,scalar_t__,scalar_t__) ;
 int copyout_validate (uintptr_t,scalar_t__,scalar_t__) ;
 TYPE_2__* current_thread () ;
 scalar_t__ kernel_pmap ;

int
copyout(const void *kernel_addr, user_addr_t user_addr, vm_size_t nbytes)
{
 int result;

 if (nbytes == 0)
  return 0;

 result = copyout_validate((uintptr_t)kernel_addr, user_addr, nbytes);
 if (result) return result;

 if (current_thread()->map->pmap == kernel_pmap)
  return copyout_kern(kernel_addr, user_addr, nbytes);
 else
  return copyio(COPYIO_OUT, kernel_addr, (char *)(uintptr_t)user_addr, nbytes, ((void*)0));
}
