
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ user_addr_t ;


 int COPYIO_INSTR ;
 int ENAMETOOLONG ;
 int copyin_validate (scalar_t__ const,uintptr_t,scalar_t__) ;
 int copyio (int ,char const*,char*,scalar_t__,scalar_t__*) ;

int
copyinstr(const user_addr_t user_addr, char *kernel_addr, vm_size_t nbytes, vm_size_t *lencopied)
{
 int result;

 *lencopied = 0;
 if (nbytes == 0)
  return ENAMETOOLONG;

 result = copyin_validate(user_addr, (uintptr_t)kernel_addr, nbytes);

 if (result) return result;

 return copyio(COPYIO_INSTR, (const char *)(uintptr_t)user_addr, kernel_addr, nbytes, lencopied);
}
