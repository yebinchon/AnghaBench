
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int mach_msg_size_t ;


 int COPYIN ;
 int copyio (int ,int const,char*,int ,int *,int ) ;

int
copyinmsg(const user_addr_t user_addr, char *kernel_addr, mach_msg_size_t nbytes)
{
    return copyio(COPYIN, user_addr, kernel_addr, nbytes, ((void*)0), 0);
}
