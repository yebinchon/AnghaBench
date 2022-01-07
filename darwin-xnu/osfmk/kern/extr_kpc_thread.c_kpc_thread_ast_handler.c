
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int kperf_flags; int kpc_buf; } ;


 int T_KPC_ALLOC ;
 int kpc_counterbuf_alloc () ;

void
kpc_thread_ast_handler( thread_t thread )
{

 if( thread->kperf_flags & T_KPC_ALLOC )
  thread->kpc_buf = kpc_counterbuf_alloc();
}
