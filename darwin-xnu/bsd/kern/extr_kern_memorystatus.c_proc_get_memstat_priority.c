
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int p_memstat_effectivepriority; int p_memstat_requestedpriority; } ;



int
proc_get_memstat_priority(proc_t p, boolean_t effective_priority)
{
 if (p) {
  if (effective_priority) {
   return p->p_memstat_effectivepriority;
  } else {
   return p->p_memstat_requestedpriority;
  }
 }
 return 0;
}
