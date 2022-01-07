
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int DB_NMI ;
 int FALSE ;
 scalar_t__ PE_i_can_has_debugger (int*) ;
 int TRUE ;

boolean_t
PE_reboot_on_panic(void)
{
 uint32_t debug_flags;

 if (PE_i_can_has_debugger(&debug_flags)
  && (debug_flags & DB_NMI)) {

  return FALSE;
 } else {
  return TRUE;
 }
}
