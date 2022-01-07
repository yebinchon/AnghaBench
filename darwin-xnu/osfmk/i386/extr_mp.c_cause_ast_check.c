
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_3__ {int cpu_id; } ;


 int ASYNC ;
 int DBG_MACH_SCHED ;
 int KERNEL_DEBUG_CONSTANT (int ,int,int,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_REMOTE_AST ;
 int MP_AST ;
 int cpu_number () ;
 int i386_signal_cpu (int,int ,int ) ;

void
cause_ast_check(
 processor_t processor)
{
 int cpu = processor->cpu_id;

 if (cpu != cpu_number()) {
  i386_signal_cpu(cpu, MP_AST, ASYNC);
  KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED, MACH_REMOTE_AST), cpu, 1, 0, 0, 0);
 }
}
