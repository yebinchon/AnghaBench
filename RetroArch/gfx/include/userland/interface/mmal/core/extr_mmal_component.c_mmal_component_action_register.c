
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VCOS_THREAD_ATTR_T ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_8__ {int priority; } ;
struct TYPE_10__ {void (* pf_action ) (TYPE_2__*) ;int action_event; int action_mutex; int action_thread; TYPE_1__ private; } ;
struct TYPE_9__ {int name; scalar_t__ priv; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_4__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int MMAL_EINVAL ;
 int MMAL_ENOMEM ;
 int MMAL_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 int mmal_component_action_thread_func ;
 scalar_t__ vcos_event_create (int *,int ) ;
 int vcos_event_delete (int *) ;
 scalar_t__ vcos_mutex_create (int *,int ) ;
 int vcos_mutex_delete (int *) ;
 int vcos_thread_attr_init (int *) ;
 int vcos_thread_attr_setpriority (int *,int ) ;
 scalar_t__ vcos_thread_create (int *,int ,int *,int ,TYPE_2__*) ;

MMAL_STATUS_T mmal_component_action_register(MMAL_COMPONENT_T *component,
                                             void (*pf_action)(MMAL_COMPONENT_T *) )
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;
   VCOS_THREAD_ATTR_T attrs;
   VCOS_STATUS_T status;

   if (private->pf_action)
      return MMAL_EINVAL;

   status = vcos_event_create(&private->action_event, component->name);
   if (status != VCOS_SUCCESS)
      return MMAL_ENOMEM;

   status = vcos_mutex_create(&private->action_mutex, component->name);
   if (status != VCOS_SUCCESS)
   {
      vcos_event_delete(&private->action_event);
      return MMAL_ENOMEM;
   }

   vcos_thread_attr_init(&attrs);
   vcos_thread_attr_setpriority(&attrs,
                                private->private.priority);
   status = vcos_thread_create(&private->action_thread, component->name, &attrs,
                               mmal_component_action_thread_func, component);
   if (status != VCOS_SUCCESS)
   {
      vcos_mutex_delete(&private->action_mutex);
      vcos_event_delete(&private->action_event);
      return MMAL_ENOMEM;
   }

   private->pf_action = pf_action;
   return MMAL_SUCCESS;
}
