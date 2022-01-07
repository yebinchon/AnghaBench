
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int user_addr_t ;


 int COPYIN ;
 int copyio (int ,int const,void*,int ,int *,int ) ;

int
copyin(const user_addr_t user_addr, void *kernel_addr, vm_size_t nbytes)
{
    return copyio(COPYIN, user_addr, kernel_addr, nbytes, ((void*)0), 0);
}
