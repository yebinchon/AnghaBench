
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ length; } ;
struct TYPE_12__ {int queue; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {TYPE_3__* clock; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PORT_CLOCK_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int MMAL_SUCCESS ;
 int mmal_port_clock_process_buffer (TYPE_2__*,TYPE_4__*) ;
 int mmal_queue_put (int ,TYPE_4__*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_clock_send(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_PORT_CLOCK_T *priv_clock = port->priv->clock;

   if (buffer->length)
      return mmal_port_clock_process_buffer(port, buffer);


   mmal_queue_put(priv_clock->queue, buffer);

   return MMAL_SUCCESS;
}
