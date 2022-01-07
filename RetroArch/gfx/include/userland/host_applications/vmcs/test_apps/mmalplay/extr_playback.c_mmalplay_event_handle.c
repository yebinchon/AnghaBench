
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ cmd; scalar_t__ length; } ;
struct TYPE_12__ {int buffer_size_min; int buffer_size_recommended; int buffer_num_min; int buffer_num_recommended; int format; } ;
struct TYPE_11__ {scalar_t__ type; int format; int name; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef int MMAL_CONNECTION_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int LOG_INFO (char*,...) ;
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 int MMAL_SUCCESS ;
 int log_format (int ,TYPE_1__*) ;
 int mmal_buffer_header_release (TYPE_3__*) ;
 int mmal_connection_event_format_changed (int *,TYPE_3__*) ;
 TYPE_2__* mmal_event_format_changed_get (TYPE_3__*) ;

__attribute__((used)) static MMAL_STATUS_T mmalplay_event_handle(MMAL_CONNECTION_T *connection, MMAL_PORT_T *port,
   MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;

   LOG_INFO("%s(%p) received event %4.4s (%i bytes)", port->name, port,
            (char *)&buffer->cmd, (int)buffer->length);

   if (buffer->cmd == MMAL_EVENT_FORMAT_CHANGED && port->type == MMAL_PORT_TYPE_OUTPUT)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event = mmal_event_format_changed_get(buffer);
      if (event)
      {
         LOG_INFO("----------Port format changed----------");
         log_format(port->format, port);
         LOG_INFO("-----------------to---------------------");
         log_format(event->format, 0);
         LOG_INFO(" buffers num (opt %i, min %i), size (opt %i, min: %i)",
                  event->buffer_num_recommended, event->buffer_num_min,
                  event->buffer_size_recommended, event->buffer_size_min);
         LOG_INFO("----------------------------------------");
      }

      status = mmal_connection_event_format_changed(connection, buffer);
   }

   mmal_buffer_header_release(buffer);
   return status;
}
