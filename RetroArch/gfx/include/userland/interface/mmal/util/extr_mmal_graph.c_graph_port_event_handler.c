
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ cmd; } ;
struct TYPE_14__ {int buffer_size_min; int buffer_size_recommended; int buffer_num_min; int buffer_num_recommended; int format; } ;
struct TYPE_13__ {scalar_t__ type; int component; int name; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef int MMAL_CONNECTION_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int LOG_DEBUG (char*,...) ;
 int LOG_TRACE (char*,int ,TYPE_1__*,TYPE_3__*,char*) ;
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_buffer_header_release (TYPE_3__*) ;
 scalar_t__ mmal_connection_event_format_changed (int *,TYPE_3__*) ;
 int mmal_event_error_send (int ,scalar_t__) ;
 TYPE_2__* mmal_event_format_changed_get (TYPE_3__*) ;
 int mmal_log_dump_format (int ) ;
 int mmal_log_dump_port (TYPE_1__*) ;

__attribute__((used)) static void graph_port_event_handler(MMAL_CONNECTION_T *connection,
   MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_STATUS_T status;

   LOG_TRACE("port: %s(%p), buffer: %p, event: %4.4s", port->name, port,
             buffer, (char *)&buffer->cmd);

   if (buffer->cmd == MMAL_EVENT_FORMAT_CHANGED && port->type == MMAL_PORT_TYPE_OUTPUT)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event = mmal_event_format_changed_get(buffer);
      if (event)
      {
         LOG_DEBUG("----------Port format changed----------");
         mmal_log_dump_port(port);
         LOG_DEBUG("-----------------to---------------------");
         mmal_log_dump_format(event->format);
         LOG_DEBUG(" buffers num (opt %i, min %i), size (opt %i, min: %i)",
                   event->buffer_num_recommended, event->buffer_num_min,
                   event->buffer_size_recommended, event->buffer_size_min);
         LOG_DEBUG("----------------------------------------");
      }

      status = mmal_connection_event_format_changed(connection, buffer);
   }

   else
      status = MMAL_SUCCESS;

   mmal_buffer_header_release(buffer);

   if (status != MMAL_SUCCESS)
      mmal_event_error_send(port->component, status);
}
