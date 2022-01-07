
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int spl_t ;


 int splsched () ;
 int splx (int ) ;
 int thread_lock (int ) ;
 int thread_set_apc_ast_locked (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
thread_set_apc_ast(thread_t thread)
{
 spl_t s = splsched();

 thread_lock(thread);
 thread_set_apc_ast_locked(thread);
 thread_unlock(thread);

 splx(s);
}
