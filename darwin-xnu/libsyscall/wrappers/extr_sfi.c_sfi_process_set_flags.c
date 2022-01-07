
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pid_t ;


 int SFI_PIDCTL_OPERATION_PID_SET_FLAGS ;
 int __sfi_pidctl (int ,int ,int ,int *) ;

int sfi_process_set_flags(pid_t pid, uint32_t flags)
{
 return __sfi_pidctl(SFI_PIDCTL_OPERATION_PID_SET_FLAGS, pid, flags, ((void*)0));
}
