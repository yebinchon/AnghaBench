
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmd_sema; scalar_t__ cmd_thread_used; } ;
typedef TYPE_1__ MMALOMX_COMPONENT_T ;


 int mmalomx_commands_actions_check (TYPE_1__*) ;
 int vcos_semaphore_post (int *) ;

void mmalomx_commands_actions_signal(MMALOMX_COMPONENT_T *component)
{
   if (component->cmd_thread_used)
      vcos_semaphore_post(&component->cmd_sema);
   else
      mmalomx_commands_actions_check(component);
}
