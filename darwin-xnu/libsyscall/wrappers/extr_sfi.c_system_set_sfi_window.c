
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int SFI_CTL_OPERATION_SFI_SET_WINDOW ;
 int __sfi_ctl (int ,int ,int ,int *) ;

int system_set_sfi_window(uint64_t sfi_window_usec)
{
 return __sfi_ctl(SFI_CTL_OPERATION_SFI_SET_WINDOW, 0, sfi_window_usec, ((void*)0));
}
