
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ length; int alloc_size; int data; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__* priv; } ;
struct TYPE_13__ {TYPE_1__* core; } ;
struct TYPE_12__ {TYPE_3__* connected_port; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,TYPE_4__*,TYPE_3__*,int ,int ,scalar_t__) ;
 scalar_t__ MMAL_PORT_TYPE_CLOCK ;
 int mmal_buffer_header_release (TYPE_4__*) ;
 int mmal_port_send_buffer (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void mmal_port_connected_input_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   LOG_TRACE("buffer %p from connected input port %p: data %p, alloc_size %u, length %u",
             buffer, port, buffer->data, buffer->alloc_size, buffer->length);




   if (port->type == MMAL_PORT_TYPE_CLOCK && buffer->length)
   {
      MMAL_PORT_T* connected_port = port->priv->core->connected_port;
      mmal_port_send_buffer(connected_port, buffer);
      return;
   }


   mmal_buffer_header_release(buffer);
}
