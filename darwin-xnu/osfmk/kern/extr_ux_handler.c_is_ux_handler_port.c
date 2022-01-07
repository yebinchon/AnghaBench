
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_port_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ux_handler_port ;

boolean_t
is_ux_handler_port(mach_port_t port)
{
 if (ux_handler_port == port)
  return TRUE;
 else
  return FALSE;
}
