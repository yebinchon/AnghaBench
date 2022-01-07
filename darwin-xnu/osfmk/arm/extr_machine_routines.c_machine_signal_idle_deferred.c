
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_4__ {int cpu_id; } ;


 int DBG_MACH_SCHED ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_REMOTE_DEFERRED_AST ;
 int cpu_signal_deferred (int ) ;
 int processor_to_cpu_datap (TYPE_1__*) ;

void
machine_signal_idle_deferred(
        processor_t processor)
{
 cpu_signal_deferred(processor_to_cpu_datap(processor));
 KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED, MACH_REMOTE_DEFERRED_AST), processor->cpu_id, 0 , 0, 0, 0);
}
