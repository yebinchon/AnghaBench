
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int lock; scalar_t__ destruction_pending; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int name; TYPE_3__* component; } ;
struct TYPE_8__ {scalar_t__ refcount_ports; scalar_t__ refcount; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef TYPE_4__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int LOG_TRACE (char*,int ,TYPE_2__*,scalar_t__) ;
 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int mmal_component_destroy_internal (TYPE_3__*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_verify (int) ;

MMAL_STATUS_T mmal_port_release(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;

   LOG_TRACE("port %s(%p), refcount %i", port->name, port,
             component->priv->refcount_ports);


   if (!vcos_verify(component->priv->refcount_ports > 0))
      return MMAL_EINVAL;

   vcos_mutex_lock(&private->lock);
   if (--component->priv->refcount_ports ||
       component->priv->refcount || private->destruction_pending)
   {
      vcos_mutex_unlock(&private->lock);
      return MMAL_SUCCESS;
   }
   vcos_mutex_unlock(&private->lock);

   return mmal_component_destroy_internal(component);
}
