
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int CSR_ALLOW_KERNEL_DEBUGGER ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 scalar_t__ csr_check (int ) ;
 scalar_t__ debug_boot_arg ;
 int debug_boot_arg_inited ;

uint32_t
PE_i_can_has_debugger(uint32_t *debug_flags)
{
 if (debug_flags) {
  *debug_flags = debug_boot_arg;
 }
 return TRUE;
}
