
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int last_ts; int queue; } ;
struct TYPE_9__ {TYPE_1__* priv; TYPE_2__* component; } ;
struct TYPE_8__ {int * clock; } ;
struct TYPE_7__ {TYPE_4__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PORT_MODULE_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int MMAL_SUCCESS ;
 int MMAL_TIME_UNKNOWN ;
 int mmal_port_buffer_header_callback (TYPE_3__*,int *) ;
 int mmal_port_clock_request_flush (int ) ;
 int * mmal_queue_get (int ) ;

__attribute__((used)) static MMAL_STATUS_T scheduler_port_flush(MMAL_PORT_T *port)
{
   MMAL_PORT_MODULE_T *port_module = port->priv->module;
   MMAL_BUFFER_HEADER_T *buffer;


   mmal_port_clock_request_flush(port->component->clock[0]);


   buffer = mmal_queue_get(port_module->queue);
   while (buffer)
   {
      mmal_port_buffer_header_callback(port, buffer);
      buffer = mmal_queue_get(port_module->queue);
   }

   port->priv->module->last_ts = MMAL_TIME_UNKNOWN;
   return MMAL_SUCCESS;
}
