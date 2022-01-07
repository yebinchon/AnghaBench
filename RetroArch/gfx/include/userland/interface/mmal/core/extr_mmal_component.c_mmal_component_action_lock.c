
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int action_mutex; int pf_action; } ;
struct TYPE_4__ {scalar_t__ priv; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_COMPONENT_T ;
typedef TYPE_2__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int vcos_mutex_lock (int *) ;

MMAL_STATUS_T mmal_component_action_lock(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;

   if (!private->pf_action)
      return MMAL_EINVAL;

   vcos_mutex_lock(&private->action_mutex);
   return MMAL_SUCCESS;
}
