
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int user_addr_t ;


 int COPYINSTR ;
 int copyio (int ,int const,char*,scalar_t__,scalar_t__*,int ) ;

int
copyinstr(const user_addr_t user_addr, char *kernel_addr, vm_size_t nbytes, vm_size_t *lencopied)
{
    *lencopied = 0;

    return copyio(COPYINSTR, user_addr, kernel_addr, nbytes, lencopied, 0);
}
