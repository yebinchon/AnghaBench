
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_5__ {scalar_t__ kperf_flags; } ;


 int kpc_thread_ast_handler (TYPE_1__*) ;
 int kperf_thread_ast_handler (TYPE_1__*) ;

void
kperf_kpc_thread_ast(thread_t thread)
{
 kpc_thread_ast_handler(thread);
 kperf_thread_ast_handler(thread);

 thread->kperf_flags = 0;
}
