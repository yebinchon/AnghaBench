
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ cmd; int length; int alloc_size; int data; } ;
struct TYPE_19__ {int format; } ;
struct TYPE_18__ {int name; scalar_t__ is_enabled; int component; int format; TYPE_2__* priv; } ;
struct TYPE_17__ {TYPE_1__* core; } ;
struct TYPE_16__ {TYPE_3__* connected_port; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef TYPE_5__ MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*,int ,scalar_t__,...) ;
 int LOG_TRACE (char*,TYPE_5__*,TYPE_3__*,int ,int ,int ) ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_buffer_header_release (TYPE_5__*) ;
 int mmal_event_error_send (int ,scalar_t__) ;
 TYPE_4__* mmal_event_format_changed_get (TYPE_5__*) ;
 scalar_t__ mmal_format_full_copy (int ,int ) ;
 scalar_t__ mmal_port_format_commit (TYPE_3__*) ;
 scalar_t__ mmal_port_send_buffer (TYPE_3__*,TYPE_5__*) ;
 int mmal_status_to_string (scalar_t__) ;

__attribute__((used)) static void mmal_port_connected_output_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_PORT_T* connected_port = port->priv->core->connected_port;
   MMAL_STATUS_T status;

   LOG_TRACE("buffer %p from connected output port %p: data %p, alloc_size %u, length %u",
             buffer, port, buffer->data, buffer->alloc_size, buffer->length);

   if (buffer->cmd)
   {
      MMAL_EVENT_FORMAT_CHANGED_T *event = mmal_event_format_changed_get(buffer);


      if (event)
      {

         status = mmal_format_full_copy(port->format, event->format);
         if (status == MMAL_SUCCESS)
            status = mmal_port_format_commit(port);
         if (status != MMAL_SUCCESS)
            LOG_ERROR("format commit failed on port %s (%i)", port->name, status);


         if (status == MMAL_SUCCESS)
            status = mmal_port_send_buffer(connected_port, buffer);

         if (status != MMAL_SUCCESS)
         {
            mmal_event_error_send(port->component, status);
            mmal_buffer_header_release(buffer);
         }
         return;
      }


      mmal_buffer_header_release(buffer);
   }
   else
   {
      if (port->is_enabled)
      {

         status = mmal_port_send_buffer(connected_port, buffer);
         if (status != MMAL_SUCCESS)
         {
            LOG_ERROR("%s could not send buffer on port %s (%s)",
                      port->name, connected_port->name, mmal_status_to_string(status));
            mmal_buffer_header_release(buffer);
         }
      }
      else
      {



         mmal_buffer_header_release(buffer);
      }
   }
}
