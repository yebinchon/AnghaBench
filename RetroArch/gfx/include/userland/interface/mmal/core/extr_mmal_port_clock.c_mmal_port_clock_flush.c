
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* clock; } ;
struct TYPE_6__ {int queue; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int MMAL_SUCCESS ;
 int mmal_port_buffer_header_callback (TYPE_3__*,int *) ;
 int * mmal_queue_get (int ) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_clock_flush(MMAL_PORT_T *port)
{
   MMAL_BUFFER_HEADER_T *buffer;


   buffer = mmal_queue_get(port->priv->clock->queue);
   while (buffer)
   {
      mmal_port_buffer_header_callback(port, buffer);
      buffer = mmal_queue_get(port->priv->clock->queue);
   }

   return MMAL_SUCCESS;
}
