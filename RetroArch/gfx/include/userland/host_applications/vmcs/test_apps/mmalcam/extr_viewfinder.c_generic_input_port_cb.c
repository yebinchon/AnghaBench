
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cmd; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int LOG_INFO (char*,int ,scalar_t__) ;
 int MMAL_CAM_BUFFER_READY ;
 int VCOS_OR ;
 int events ;
 int mmal_buffer_header_release (TYPE_2__*) ;
 int vcos_event_flags_set (int *,int ,int ) ;

__attribute__((used)) static void generic_input_port_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   if (buffer->cmd != 0)
   {
      LOG_INFO("%s callback: event %u not supported", port->name, buffer->cmd);
   }

   mmal_buffer_header_release(buffer);
   vcos_event_flags_set(&events, MMAL_CAM_BUFFER_READY, VCOS_OR);
}
