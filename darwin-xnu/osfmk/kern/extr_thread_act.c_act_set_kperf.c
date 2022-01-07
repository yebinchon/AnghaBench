
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;


 int AST_KPERF ;
 int act_set_ast (scalar_t__,int ) ;
 scalar_t__ current_thread () ;
 int ml_get_interrupts_enabled () ;
 int panic (char*) ;

void
act_set_kperf(
 thread_t thread)
{

 if (thread != current_thread())
  if( !ml_get_interrupts_enabled() )
   panic("unsafe act_set_kperf operation");

 act_set_ast( thread, AST_KPERF );
}
