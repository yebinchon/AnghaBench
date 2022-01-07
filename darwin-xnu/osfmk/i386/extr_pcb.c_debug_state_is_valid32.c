
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dr7; } ;
typedef TYPE_1__ x86_debug_state32_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int dr7d_is_valid (int *) ;

boolean_t
debug_state_is_valid32(x86_debug_state32_t *ds)
{
 if (!dr7d_is_valid(&ds->dr7))
  return FALSE;

 return TRUE;
}
