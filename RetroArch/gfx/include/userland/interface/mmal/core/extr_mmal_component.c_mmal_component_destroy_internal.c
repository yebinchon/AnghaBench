
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int lock; } ;
struct TYPE_9__ {struct TYPE_9__* port; scalar_t__ control; TYPE_1__* priv; int id; int name; } ;
struct TYPE_8__ {scalar_t__ (* pf_destroy ) (TYPE_2__*) ;scalar_t__ event_pool; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int LOG_TRACE (char*,int ,int ) ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_component_action_deregister (TYPE_2__*) ;
 int mmal_core_deinit () ;
 int mmal_pool_destroy (scalar_t__) ;
 int mmal_port_free (scalar_t__) ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int vcos_free (TYPE_2__*) ;
 int vcos_mutex_delete (int *) ;
 int vcos_verify (int) ;

__attribute__((used)) static MMAL_STATUS_T mmal_component_destroy_internal(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;
   MMAL_STATUS_T status;

   LOG_TRACE("%s %d", component->name, component->id);

   mmal_component_action_deregister(component);




   if (component->priv->pf_destroy)
   {
      status = component->priv->pf_destroy(component);
      if(!vcos_verify(status == MMAL_SUCCESS))
         return status;
   }

   if (component->priv->event_pool)
      mmal_pool_destroy(component->priv->event_pool);

   if (component->control)
      mmal_port_free(component->control);

   if (component->port)
      vcos_free(component->port);

   vcos_mutex_delete(&private->lock);
   vcos_free(component);
   mmal_core_deinit();
   return MMAL_SUCCESS;
}
