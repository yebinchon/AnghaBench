
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int user_addr_t ;


 int copy_validate (int const,uintptr_t,int ) ;

int
copyin_validate(const user_addr_t ua, uintptr_t ka, vm_size_t nbytes)
{
 return (copy_validate(ua, ka, nbytes));
}
