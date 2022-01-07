
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * call; } ;
struct TYPE_5__ {TYPE_1__ threshold; int dequeues; } ;
typedef TYPE_2__ timer_longterm_t ;
typedef int * timer_call_t ;


 TYPE_2__ timer_longterm ;

void
timer_longterm_dequeued_locked(timer_call_t call)
{
 timer_longterm_t *tlp = &timer_longterm;

 tlp->dequeues++;
 if (call == tlp->threshold.call)
  tlp->threshold.call = ((void*)0);
}
