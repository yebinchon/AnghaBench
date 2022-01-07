
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cmd; } ;
struct TYPE_7__ {int name; scalar_t__ userdata; } ;
typedef int MMAL_QUEUE_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int LOG_DEBUG (char*,int ) ;
 int LOG_INFO (char*,int ,scalar_t__) ;
 int MMAL_CAM_BUFFER_READY ;
 int VCOS_OR ;
 int events ;
 int mmal_buffer_header_release (TYPE_2__*) ;
 int mmal_queue_put (int *,TYPE_2__*) ;
 int vcos_event_flags_set (int *,int ,int ) ;

__attribute__((used)) static void generic_output_port_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   if (buffer->cmd != 0)
   {
      LOG_INFO("%s callback: event %u not supported", port->name, buffer->cmd);
      mmal_buffer_header_release(buffer);
   }
   else
   {
      MMAL_QUEUE_T *queue = (MMAL_QUEUE_T *)port->userdata;

      LOG_DEBUG("%s callback", port->name);
      mmal_queue_put(queue, buffer);
   }

   vcos_event_flags_set(&events, MMAL_CAM_BUFFER_READY, VCOS_OR);
}
