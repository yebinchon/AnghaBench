
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_25__ {int flags; int data; TYPE_1__* priv; } ;
struct TYPE_24__ {int event_ctx; int callback_queue; } ;
struct TYPE_23__ {TYPE_4__* priv; } ;
struct TYPE_22__ {TYPE_3__* priv; int component; } ;
struct TYPE_21__ {TYPE_7__* module; } ;
struct TYPE_20__ {TYPE_2__* module; } ;
struct TYPE_19__ {int zero_copy_workaround; } ;
struct TYPE_18__ {scalar_t__ component_data; } ;
struct TYPE_17__ {int * client_context; } ;
typedef TYPE_5__ MMAL_PORT_T ;
typedef TYPE_6__ MMAL_COMPONENT_T ;
typedef TYPE_7__ MMAL_COMPONENT_MODULE_T ;
typedef TYPE_8__ MMAL_BUFFER_HEADER_T ;


 int MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED ;
 int MMAL_EIO ;
 TYPE_15__* mmal_buffer_header_driver_data (TYPE_8__*) ;
 int mmal_event_error_send (int ,int ) ;
 int mmal_port_buffer_header_callback (TYPE_5__*,TYPE_8__*) ;
 int mmal_port_event_send (TYPE_5__*,TYPE_8__*) ;
 TYPE_8__* mmal_queue_get (int ) ;
 int mmal_vc_shm_lock (int ,int ) ;

__attribute__((used)) static void mmal_vc_do_callback(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *buffer;
   MMAL_PORT_T *port;


   buffer = mmal_queue_get(module->callback_queue);
   if (!buffer)
      return;

   port = (MMAL_PORT_T *)buffer->priv->component_data;


   if (buffer->flags & MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED)
       mmal_event_error_send(port->component, MMAL_EIO);


   if (mmal_buffer_header_driver_data(buffer)->client_context ==
       &component->priv->module->event_ctx)
   {
      mmal_port_event_send(port, buffer);
      return;
   }

   buffer->data = mmal_vc_shm_lock(buffer->data, port->priv->module->zero_copy_workaround);
   mmal_port_buffer_header_callback(port, buffer);
}
