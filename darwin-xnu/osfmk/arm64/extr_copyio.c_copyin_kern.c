
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ user_addr_t ;


 int bcopy (char const*,char*,int ) ;

int
copyin_kern(const user_addr_t user_addr, char *kernel_addr, vm_size_t nbytes)
{
 bcopy((const char*)(uintptr_t)user_addr, kernel_addr, nbytes);

 return 0;
}
