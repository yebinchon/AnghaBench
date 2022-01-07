
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


 int COPYIO_IN ;
 int copyin_kern (scalar_t__ const,void*,scalar_t__) ;
 int copyin_validate (scalar_t__ const,uintptr_t,scalar_t__) ;
 int copyio (int ,char const*,void*,scalar_t__,int *) ;
 TYPE_2__* current_thread () ;
 scalar_t__ kernel_pmap ;

int
copyin(const user_addr_t user_addr, void *kernel_addr, vm_size_t nbytes)
{
 int result;

 if (nbytes == 0)
  return 0;

 result = copyin_validate(user_addr, (uintptr_t)kernel_addr, nbytes);
 if (result) return result;

 if (current_thread()->map->pmap == kernel_pmap)
  return copyin_kern(user_addr, kernel_addr, nbytes);
 else
  return copyio(COPYIO_IN, (const char *)(uintptr_t)user_addr, kernel_addr, nbytes, ((void*)0));
}
