
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ is_enabled; } ;
struct TYPE_10__ {int destruction_pending; int lock; } ;
struct TYPE_9__ {unsigned int input_num; unsigned int output_num; unsigned int clock_num; int id; int name; TYPE_1__* priv; TYPE_4__** clock; TYPE_4__** output; TYPE_4__** input; TYPE_4__* control; } ;
struct TYPE_8__ {scalar_t__ refcount; scalar_t__ refcount_ports; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int LOG_TRACE (char*,int ,int ) ;
 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int mmal_component_destroy_internal (TYPE_2__*) ;
 int mmal_port_disable (TYPE_4__*) ;
 int mmal_port_disconnect (TYPE_4__*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_verify (int) ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_release_internal(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;
   unsigned int i;

   if (!vcos_verify(component->priv->refcount > 0))
      return MMAL_EINVAL;

   vcos_mutex_lock(&private->lock);
   if (--component->priv->refcount)
   {
      vcos_mutex_unlock(&private->lock);
      return MMAL_SUCCESS;
   }
   private->destruction_pending = 1;
   vcos_mutex_unlock(&private->lock);

   LOG_TRACE("%s %d preparing for destruction", component->name, component->id);


   for(i = 0; i < component->input_num; i++)
      if(component->input[i]->is_enabled)
         mmal_port_disable(component->input[i]);
   for(i = 0; i < component->output_num; i++)
      if(component->output[i]->is_enabled)
         mmal_port_disable(component->output[i]);
   for(i = 0; i < component->clock_num; i++)
      if(component->clock[i]->is_enabled)
         mmal_port_disable(component->clock[i]);
   if(component->control->is_enabled)
      mmal_port_disable(component->control);



   for(i = 0; i < component->input_num; i++)
      mmal_port_disconnect(component->input[i]);
   for(i = 0; i < component->output_num; i++)
      mmal_port_disconnect(component->output[i]);
   for(i = 0; i < component->clock_num; i++)
      mmal_port_disconnect(component->clock[i]);


   vcos_mutex_lock(&private->lock);
   if (component->priv->refcount_ports)
   {
      private->destruction_pending = 0;
      vcos_mutex_unlock(&private->lock);
      LOG_TRACE("%s %d delaying destruction", component->name, component->id);
      return MMAL_SUCCESS;
   }
   vcos_mutex_unlock(&private->lock);

   return mmal_component_destroy_internal(component);
}
