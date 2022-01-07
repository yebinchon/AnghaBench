
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_5__ {int cpu_id; } ;


 int DBG_MACH_SCHED ;
 int KERNEL_DEBUG_CONSTANT (int ,int ,int,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_REMOTE_AST ;
 int SIGPast ;
 int cpu_signal (int ,int ,void*,void*) ;
 TYPE_1__* current_processor () ;
 int processor_to_cpu_datap (TYPE_1__*) ;

void
cause_ast_check(
   processor_t processor)
{
 if (current_processor() != processor) {
  cpu_signal(processor_to_cpu_datap(processor), SIGPast, (void *)((void*)0), (void *)((void*)0));
  KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED, MACH_REMOTE_AST), processor->cpu_id, 1 , 0, 0, 0);
 }
}
