
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int assert (int ) ;
 scalar_t__ debug_boot_arg ;
 int debug_boot_arg_inited ;
 scalar_t__ debug_enabled ;

uint32_t
PE_i_can_has_debugger(uint32_t *debug_flags)
{
 if (debug_flags) {



  if (debug_enabled)
   *debug_flags = debug_boot_arg;
  else
   *debug_flags = 0;
 }
 return (debug_enabled);
}
