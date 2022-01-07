
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int action_quit; int * pf_action; int action_mutex; int action_event; int action_thread; } ;
struct TYPE_4__ {scalar_t__ priv; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_COMPONENT_T ;
typedef TYPE_2__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int vcos_event_delete (int *) ;
 int vcos_event_signal (int *) ;
 int vcos_mutex_delete (int *) ;
 int vcos_thread_join (int *,int *) ;

MMAL_STATUS_T mmal_component_action_deregister(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;

   if (!private->pf_action)
      return MMAL_EINVAL;

   private->action_quit = 1;
   vcos_event_signal(&private->action_event);
   vcos_thread_join(&private->action_thread, ((void*)0));
   vcos_event_delete(&private->action_event);
   vcos_mutex_delete(&private->action_mutex);
   private->pf_action = ((void*)0);
   private->action_quit = 0;
   return MMAL_SUCCESS;
}
