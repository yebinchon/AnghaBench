
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
typedef int spl_t ;
typedef int ast_t ;


 int ast_propagate (scalar_t__) ;
 scalar_t__ current_thread () ;
 int splsched () ;
 int splx (int ) ;
 int thread_ast_set (scalar_t__,int ) ;

__attribute__((used)) static void
act_set_ast_async(thread_t thread,
                  ast_t ast)
{
 thread_ast_set(thread, ast);

 if (thread == current_thread()) {
  spl_t s = splsched();
  ast_propagate(thread);
  splx(s);
 }
}
