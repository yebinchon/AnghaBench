
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int boolean_t ;
struct TYPE_4__ {int p_lflag; } ;


 int FALSE ;
 scalar_t__ ISSET (int ,int ) ;
 TYPE_1__* PROC_NULL ;
 int P_LTRACED ;
 int TRUE ;

boolean_t
proc_send_synchronous_EXC_RESOURCE(proc_t p)
{
 if (p == PROC_NULL)
  return FALSE;


 if (ISSET(p->p_lflag, P_LTRACED)) {
  return TRUE;
 }
 return FALSE;
}
