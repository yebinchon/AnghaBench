
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int user_addr_t ;
typedef int uint64_t ;


 int COPYIO_IN_WORD ;
 int EINVAL ;
 int copyin_validate (int const,uintptr_t,int) ;
 int copyio (int ,char const*,char*,int,int *) ;

int
copyin_word(const user_addr_t user_addr, uint64_t *kernel_addr, vm_size_t nbytes)
{
 int result;


 if ((nbytes != 4) && (nbytes != 8))
  return EINVAL;


 if (user_addr & (nbytes - 1))
  return EINVAL;

 result = copyin_validate(user_addr, (uintptr_t)kernel_addr, nbytes);
 if (result)
  return result;

 return copyio(COPYIO_IN_WORD, (const char *)user_addr, (char *)(uintptr_t)kernel_addr, nbytes, ((void*)0));
}
