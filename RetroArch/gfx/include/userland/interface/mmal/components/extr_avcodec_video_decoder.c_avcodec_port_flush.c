
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * queue_in; int * queue_out; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__* component; } ;
struct TYPE_7__ {TYPE_4__* module; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_QUEUE_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef TYPE_4__ MMAL_COMPONENT_MODULE_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int MMAL_EINVAL ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 int MMAL_SUCCESS ;
 int mmal_port_buffer_header_callback (TYPE_2__*,int *) ;
 int * mmal_queue_get (int *) ;

__attribute__((used)) static MMAL_STATUS_T avcodec_port_flush(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *buffer;
   MMAL_QUEUE_T *queue;

   if(port->type == MMAL_PORT_TYPE_OUTPUT)
      queue = module->queue_out;
   else if(port->type == MMAL_PORT_TYPE_INPUT)
      queue = module->queue_in;
   else
      return MMAL_EINVAL;




   while((buffer = mmal_queue_get(queue)))
      mmal_port_buffer_header_callback(port, buffer);

   return MMAL_SUCCESS;
}
