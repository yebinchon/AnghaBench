
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct TYPE_6__ {int specFlags; } ;
struct TYPE_7__ {TYPE_1__ machine; } ;


 int Load_context (TYPE_2__*) ;
 int OnProc ;
 int act_machine_switch_pcb (int *,TYPE_2__*) ;

void
machine_load_context(
 thread_t new)
{
 new->machine.specFlags |= OnProc;
 act_machine_switch_pcb(((void*)0), new);
 Load_context(new);
}
