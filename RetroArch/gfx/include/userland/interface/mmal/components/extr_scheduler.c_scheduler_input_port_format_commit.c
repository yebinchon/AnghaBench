
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__** output; } ;
struct TYPE_9__ {int buffer_size_recommended; int buffer_num_recommended; int buffer_size_min; int buffer_num_min; int format; } ;
struct TYPE_8__ {size_t index; int buffer_size_recommended; int buffer_num_recommended; int buffer_size_min; int buffer_num_min; int format; int is_enabled; TYPE_3__* component; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*) ;
 scalar_t__ MMAL_EINVAL ;
 int MMAL_EVENT_FORMAT_CHANGED ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_buffer_header_release (int *) ;
 TYPE_2__* mmal_event_format_changed_get (int *) ;
 int mmal_format_copy (int ,int ) ;
 scalar_t__ mmal_format_full_copy (int ,int ) ;
 scalar_t__ mmal_port_event_get (TYPE_1__*,int **,int ) ;
 int mmal_port_event_send (TYPE_1__*,int *) ;

__attribute__((used)) static MMAL_STATUS_T scheduler_input_port_format_commit(MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_EVENT_FORMAT_CHANGED_T *event;
   MMAL_PORT_T *output = component->output[0];
   MMAL_BUFFER_HEADER_T *buffer;
   MMAL_STATUS_T status;



   if (!output->is_enabled)
   {
      status = mmal_format_full_copy(output->format, port->format);
      return status;
   }


   status = mmal_port_event_get(output, &buffer, MMAL_EVENT_FORMAT_CHANGED);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("unable to get an event buffer");
      return status;
   }
   event = mmal_event_format_changed_get(buffer);
   if (!event)
   {
      mmal_buffer_header_release(buffer);
      LOG_ERROR("failed to set format");
      return MMAL_EINVAL;
   }
   mmal_format_copy(event->format, port->format);


   event->buffer_num_min = port->buffer_num_min;
   event->buffer_size_min = port->buffer_size_min;
   event->buffer_num_recommended = port->buffer_num_recommended;
   event->buffer_size_recommended = port->buffer_size_recommended;

   mmal_port_event_send(component->output[port->index], buffer);
   return status;
}
