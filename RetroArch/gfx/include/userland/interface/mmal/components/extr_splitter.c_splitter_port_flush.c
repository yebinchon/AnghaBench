
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int queue; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_4__* component; TYPE_1__* priv; } ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {scalar_t__ sent_flags; } ;
struct TYPE_10__ {TYPE_3__* module; } ;
struct TYPE_9__ {TYPE_6__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_5__ MMAL_PORT_T ;
typedef TYPE_6__ MMAL_PORT_MODULE_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 int MMAL_SUCCESS ;
 int mmal_port_buffer_header_callback (TYPE_5__*,int *) ;
 int * mmal_queue_get (int ) ;

__attribute__((used)) static MMAL_STATUS_T splitter_port_flush(MMAL_PORT_T *port)
{
   MMAL_PORT_MODULE_T *port_module = port->priv->module;
   MMAL_BUFFER_HEADER_T *buffer;


   buffer = mmal_queue_get(port_module->queue);
   while(buffer)
   {
      mmal_port_buffer_header_callback(port, buffer);
      buffer = mmal_queue_get(port_module->queue);
   }

   if (port->type == MMAL_PORT_TYPE_INPUT)
      port->component->priv->module->sent_flags = 0;

   return MMAL_SUCCESS;
}
