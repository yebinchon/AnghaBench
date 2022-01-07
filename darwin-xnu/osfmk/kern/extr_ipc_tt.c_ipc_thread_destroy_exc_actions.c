
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct exception_action {int dummy; } ;
struct TYPE_3__ {int * exc_actions; } ;


 size_t EXC_TYPES_COUNT ;
 int kfree (int *,int) ;
 int mac_exc_free_action_label (int *) ;

void
ipc_thread_destroy_exc_actions(
 thread_t thread)
{
 if (thread->exc_actions != ((void*)0)) {






  kfree(thread->exc_actions,
        sizeof(struct exception_action) * EXC_TYPES_COUNT);
  thread->exc_actions = ((void*)0);
 }
}
