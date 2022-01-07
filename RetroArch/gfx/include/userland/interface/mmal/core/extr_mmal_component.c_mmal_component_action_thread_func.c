
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_5__ {int action_mutex; int (* pf_action ) (TYPE_1__*) ;scalar_t__ action_quit; int action_event; } ;
struct TYPE_4__ {scalar_t__ priv; } ;
typedef TYPE_1__ MMAL_COMPONENT_T ;
typedef TYPE_2__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 scalar_t__ VCOS_EAGAIN ;
 scalar_t__ VCOS_SUCCESS ;
 int stub1 (TYPE_1__*) ;
 scalar_t__ vcos_event_wait (int *) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_verify (int) ;

__attribute__((used)) static void *mmal_component_action_thread_func(void *arg)
{
   MMAL_COMPONENT_T *component = (MMAL_COMPONENT_T *)arg;
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;
   VCOS_STATUS_T status;

   while (1)
   {
      status = vcos_event_wait(&private->action_event);

      if (status == VCOS_EAGAIN)
         continue;
      if (private->action_quit)
         break;
      if (!vcos_verify(status == VCOS_SUCCESS))
         break;

      vcos_mutex_lock(&private->action_mutex);
      private->pf_action(component);
      vcos_mutex_unlock(&private->action_mutex);
   }
   return 0;
}
