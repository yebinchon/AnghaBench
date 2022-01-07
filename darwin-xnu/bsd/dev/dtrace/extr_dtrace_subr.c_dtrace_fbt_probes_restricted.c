
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int dtrace_are_restrictions_relaxed () ;
 scalar_t__ dtrace_is_restricted () ;

boolean_t
dtrace_fbt_probes_restricted(void)
{






 return FALSE;
}
