
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__** output; } ;
struct TYPE_13__ {scalar_t__ buffer_size_recommended; scalar_t__ buffer_size_min; int buffer_num_recommended; int buffer_num_min; int format; } ;
struct TYPE_12__ {scalar_t__ buffer_size_min; scalar_t__ buffer_size_recommended; scalar_t__ buffer_size; TYPE_2__* priv; int buffer_num_recommended; int buffer_num_min; int format; int is_enabled; TYPE_5__* component; } ;
struct TYPE_11__ {TYPE_1__* module; } ;
struct TYPE_10__ {int needs_configuring; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef TYPE_5__ MMAL_COMPONENT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*) ;
 int MMAL_EVENT_FORMAT_CHANGED ;
 scalar_t__ MMAL_MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MMAL_SUCCESS ;
 TYPE_4__* mmal_event_format_changed_get (int *) ;
 int mmal_format_compare (int ,int ) ;
 int mmal_format_copy (int ,int ) ;
 scalar_t__ mmal_format_full_copy (int ,int ) ;
 scalar_t__ mmal_port_event_get (TYPE_3__*,int **,int ) ;
 int mmal_port_event_send (TYPE_3__*,int *) ;

__attribute__((used)) static MMAL_STATUS_T copy_input_port_format_commit(MMAL_PORT_T *in)
{
   MMAL_COMPONENT_T *component = in->component;
   MMAL_PORT_T *out = component->output[0];
   MMAL_EVENT_FORMAT_CHANGED_T *event;
   MMAL_BUFFER_HEADER_T *buffer;
   MMAL_STATUS_T status;



   if (!mmal_format_compare(in->format, out->format) &&
       out->buffer_size_min == out->buffer_size_recommended &&
       out->buffer_size_min == MMAL_MAX(in->buffer_size_min, in->buffer_size))
      return MMAL_SUCCESS;



   if (!out->is_enabled)
   {
      out->buffer_size_min = out->buffer_size_recommended =
         MMAL_MAX(in->buffer_size, in->buffer_size_min);
      return mmal_format_full_copy(out->format, in->format);
   }


   status = mmal_port_event_get(out, &buffer, MMAL_EVENT_FORMAT_CHANGED);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("unable to get an event buffer");
      return status;
   }

   event = mmal_event_format_changed_get(buffer);
   mmal_format_copy(event->format, in->format);


   event->buffer_num_min = out->buffer_num_min;
   event->buffer_num_recommended = out->buffer_num_recommended;
   event->buffer_size_min = event->buffer_size_recommended =
      MMAL_MAX(in->buffer_size_min, in->buffer_size);

   out->priv->module->needs_configuring = 1;
   mmal_port_event_send(out, buffer);
   return status;
}
