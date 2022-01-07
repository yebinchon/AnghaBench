
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ index; scalar_t__ type; TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* core; } ;
struct TYPE_6__ {int (* buffer_header_callback ) (TYPE_3__*,int *) ;} ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int,int) ;
 int mmal_buffer_header_release (int *) ;
 int stub1 (TYPE_3__*,int *) ;

void mmal_port_event_send(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   if (port->priv->core->buffer_header_callback)
   {
      port->priv->core->buffer_header_callback(port, buffer);
   }
   else
   {
      LOG_ERROR("event lost on port %i,%i (buffer header callback not defined)",
                (int)port->type, (int)port->index);
      mmal_buffer_header_release(buffer);
   }
}
