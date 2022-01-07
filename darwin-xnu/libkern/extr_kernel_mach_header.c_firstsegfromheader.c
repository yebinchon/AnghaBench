
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_5__ {scalar_t__ cmd; scalar_t__ cmdsize; } ;
typedef TYPE_1__ kernel_segment_command_t ;
struct TYPE_6__ {scalar_t__ ncmds; } ;
typedef TYPE_2__ kernel_mach_header_t ;


 scalar_t__ LC_SEGMENT_KERNEL ;

kernel_segment_command_t *
firstsegfromheader(kernel_mach_header_t *header)
{
    u_int i = 0;
    kernel_segment_command_t *sgp = (kernel_segment_command_t *)
        ((uintptr_t)header + sizeof(*header));

    for (i = 0; i < header->ncmds; i++){
        if (sgp->cmd == LC_SEGMENT_KERNEL)
            return sgp;
        sgp = (kernel_segment_command_t *)((uintptr_t)sgp + sgp->cmdsize);
    }
    return (kernel_segment_command_t *)((void*)0);
}
