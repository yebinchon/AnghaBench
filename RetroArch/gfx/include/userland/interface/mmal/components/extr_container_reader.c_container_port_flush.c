
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ length; } ;
struct TYPE_11__ {int queue; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {TYPE_3__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PORT_MODULE_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int MMAL_SUCCESS ;
 int mmal_port_buffer_header_callback (TYPE_2__*,TYPE_4__*) ;
 TYPE_4__* mmal_queue_get (int ) ;

__attribute__((used)) static MMAL_STATUS_T container_port_flush(MMAL_PORT_T *port)
{
   MMAL_PORT_MODULE_T *port_module = port->priv->module;
   MMAL_BUFFER_HEADER_T *buffer;




   buffer = mmal_queue_get(port_module->queue);
   while(buffer)
   {
      buffer->length = 0;
      mmal_port_buffer_header_callback(port, buffer);
      buffer = mmal_queue_get(port_module->queue);
   }

   return MMAL_SUCCESS;
}
