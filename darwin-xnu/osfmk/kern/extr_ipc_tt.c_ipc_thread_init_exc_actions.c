
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct exception_action {int dummy; } ;
struct TYPE_3__ {int * exc_actions; } ;


 int EXC_TYPES_COUNT ;
 int assert (int ) ;
 int bzero (int *,int) ;
 int * kalloc (int) ;
 int mac_exc_associate_action_label (int *,int ) ;
 int mac_exc_create_label () ;

void
ipc_thread_init_exc_actions(
 thread_t thread)
{
 assert(thread->exc_actions == ((void*)0));

 thread->exc_actions = kalloc(sizeof(struct exception_action) * EXC_TYPES_COUNT);
 bzero(thread->exc_actions, sizeof(struct exception_action) * EXC_TYPES_COUNT);






}
