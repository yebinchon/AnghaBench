
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int lock; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int name; TYPE_3__* component; } ;
struct TYPE_7__ {int refcount_ports; } ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef TYPE_4__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int LOG_TRACE (char*,int ,TYPE_2__*,int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void mmal_port_acquire(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;

   LOG_TRACE("port %s(%p), refcount %i", port->name, port,
             component->priv->refcount_ports);

   vcos_mutex_lock(&private->lock);
   component->priv->refcount_ports++;
   vcos_mutex_unlock(&private->lock);
}
