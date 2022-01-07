
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid_command {void* uuid; } ;
typedef int kernel_mach_header_t ;


 int LC_UUID ;
 scalar_t__ getcommandfromheader (int *,int ) ;

void *
getuuidfromheader(kernel_mach_header_t *mhp, unsigned long *size)
{
    struct uuid_command *cmd = (struct uuid_command *)
        getcommandfromheader(mhp, LC_UUID);

    if (cmd != ((void*)0)) {
        if (size) {
            *size = sizeof(cmd->uuid);
        }
        return cmd->uuid;
    }

    return ((void*)0);
}
