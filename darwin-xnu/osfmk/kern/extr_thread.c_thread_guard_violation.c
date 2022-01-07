
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef int spl_t ;
typedef void* mach_exception_data_type_t ;
struct TYPE_7__ {void* subcode; void* code; } ;
struct TYPE_8__ {scalar_t__ task; TYPE_1__ guard_exc_info; } ;


 int AST_GUARD ;
 int EXC_GUARD_DECODE_GUARD_TYPE (void*) ;
 int assert (int) ;
 int ast_propagate (TYPE_2__*) ;
 TYPE_2__* current_thread () ;
 scalar_t__ kernel_task ;
 int splsched () ;
 int splx (int ) ;
 int thread_ast_set (TYPE_2__*,int ) ;

void
thread_guard_violation(thread_t thread,
    mach_exception_data_type_t code, mach_exception_data_type_t subcode)
{
 assert(thread == current_thread());


 if (thread->task == kernel_task)
  return;

 spl_t s = splsched();





 assert(EXC_GUARD_DECODE_GUARD_TYPE(code));
 thread->guard_exc_info.code = code;
 thread->guard_exc_info.subcode = subcode;
 thread_ast_set(thread, AST_GUARD);
 ast_propagate(thread);

 splx(s);
}
