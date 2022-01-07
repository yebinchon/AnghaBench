
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int user_addr_t ;
typedef int uint64_t ;


 int COPYINWORD ;
 int EINVAL ;
 int copyio (int ,int const,char*,int,int *,int ) ;

int
copyin_word(const user_addr_t user_addr, uint64_t *kernel_addr, vm_size_t nbytes)
{

 if ((nbytes != 4) && (nbytes != 8))
  return EINVAL;


 if (user_addr & (nbytes - 1))
  return EINVAL;
 return copyio(COPYINWORD, user_addr, (char *)(uintptr_t)kernel_addr, nbytes, ((void*)0), 0);
}
