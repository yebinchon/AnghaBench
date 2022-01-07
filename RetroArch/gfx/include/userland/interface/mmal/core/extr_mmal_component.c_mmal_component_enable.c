
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {int is_enabled; unsigned int input_num; unsigned int output_num; int * output; int * input; TYPE_1__* priv; int id; int name; } ;
struct TYPE_6__ {scalar_t__ (* pf_enable ) (TYPE_2__*) ;} ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int LOG_TRACE (char*,int ,int ) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_pause (int ,int ) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

MMAL_STATUS_T mmal_component_enable(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private;
   MMAL_STATUS_T status = MMAL_ENOSYS;
   unsigned int i;

   if(!component)
      return MMAL_EINVAL;

   private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;

   LOG_TRACE("%s %d", component->name, component->id);

   vcos_mutex_lock(&private->lock);


   if (component->is_enabled)
   {
      vcos_mutex_unlock(&private->lock);
      return MMAL_SUCCESS;
   }

   if (component->priv->pf_enable)
      status = component->priv->pf_enable(component);



   if (status == MMAL_ENOSYS)
   {
      status = MMAL_SUCCESS;


      for (i = 0; status == MMAL_SUCCESS && i < component->input_num; i++)
         status = mmal_port_pause(component->input[i], MMAL_FALSE);
      for (i = 0; status == MMAL_SUCCESS && i < component->output_num; i++)
         status = mmal_port_pause(component->output[i], MMAL_FALSE);
   }

   if (status == MMAL_SUCCESS)
      component->is_enabled = 1;

   vcos_mutex_unlock(&private->lock);

   return status;
}
