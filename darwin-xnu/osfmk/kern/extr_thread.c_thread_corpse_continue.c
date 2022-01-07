
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_6__ {scalar_t__ active; } ;


 int AST_APC ;
 scalar_t__ FALSE ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int panic (char*) ;
 int thread_apc_ast (TYPE_1__*) ;
 int thread_ast_clear (TYPE_1__*,int ) ;
 int thread_terminate_internal (TYPE_1__*) ;

void
thread_corpse_continue(void)
{
 thread_t thread = current_thread();

 thread_terminate_internal(thread);





 assert(thread->active == FALSE);
 thread_ast_clear(thread, AST_APC);
 thread_apc_ast(thread);

 panic("thread_corpse_continue");

}
