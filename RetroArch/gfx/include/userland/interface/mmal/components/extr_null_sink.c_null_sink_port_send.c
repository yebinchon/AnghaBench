
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ length; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_BUFFER_HEADER_T ;
typedef int MMAL_BOOL_T ;


 int MMAL_BUFFER_HEADER_FLAG_EOS ;
 int MMAL_SUCCESS ;
 int mmal_event_eos_send (int *) ;
 int mmal_port_buffer_header_callback (int *,TYPE_1__*) ;

__attribute__((used)) static MMAL_STATUS_T null_sink_port_send(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_BOOL_T eos = buffer->flags & MMAL_BUFFER_HEADER_FLAG_EOS;


   buffer->length = 0;
   mmal_port_buffer_header_callback(port, buffer);


   if(eos)
      return mmal_event_eos_send(port);

   return MMAL_SUCCESS;
}
